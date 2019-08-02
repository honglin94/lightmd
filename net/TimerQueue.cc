#include "net/TimerQueue.h"

#include <unistd.h>
#include <strings.h>
#include <iostream>
#include <algorithm>

using namespace lightmd;

TimerQueue::TimerQueue(EventLoop* pEventLoop)
    : pEventLoop_(pEventLoop)
    {
        timerfd_ = createTimerfd();
        pTimerfdChannel_ = new Channel(pEventLoop_, timerfd_);
        pTimerfdChannel_->setCallback(this);
        pTimerfdChannel_->enableReading();
    }

TimerQueue::~TimerQueue()
{
    ::close(timerfd_);
}

int TimerQueue::createTimerfd()
{
    int tfd = ::timerfd_create(CLOCK_MONOTONIC, TFD_CLOEXEC | TFD_NONBLOCK); 
    if(tfd < 0)
    {
        std::cout << "createTimerfd() failed" << std::endl;
    }
    return tfd;
}

void TimerQueue::handleRead()
{
    Timestamp now(Timestamp::now());
    readTimerfd();

    std::vector<Entry> expired = getExpired(now);
    for(int i = 0; i < expired.size(); ++i)
    {
        expired[i].second->doTimeout();
    }
    reset(expired, now);
}

void TimerQueue::handleWrite()
{

}

void TimerQueue::readTimerfd()
{
    int64_t buf;
    int n = ::read(timerfd_, &buf, sizeof(buf));
    if(n != 8)
    {
        std::cout << "readTimerfd() error" << std::endl; 
    }
}

std::vector<TimerQueue::Entry> TimerQueue::getExpired(Timestamp stamp)
{
    std::vector<Entry> expired;
    //why sentry.second must be uintptr_max?
    Entry sentry(stamp, reinterpret_cast<Timer*>(UINTPTR_MAX));
    TimerList::iterator end = timers_.lower_bound(sentry); 
    for(auto it = timers_.begin(); it != end; ++it)
    {
        expired.push_back(*it);
    }
    timers_.erase(timers_.begin(), end);
    return expired;
}

void TimerQueue::reset(const std::vector<Entry>& expired, Timestamp stamp)
{
    //update queue
    for(auto it = expired.begin(); it != expired.end(); ++it)
    {
        if(it->second->isRepeat())
        {
            it->second->moveToNext();
            insert(it->second);
        }
    }

    //settimerfd
    Timestamp nextstamp;
    if(!timers_.empty())
    {
        nextstamp = timers_.begin()->first;
    }
    if(nextstamp.valid())
    {
        settimes(nextstamp);
    }
}

void TimerQueue::settimes(Timestamp stamp)
{
    struct itimerspec newValue;
    struct itimerspec oldValue;
    bzero(&newValue, sizeof(newValue));
    struct timespec stampspec;
    stampspec.tv_sec = stamp.getMicrosecondsSinceEpoch() / Timestamp::kMicrosecondsPerSeconds;
    stampspec.tv_sec = (stamp.getMicrosecondsSinceEpoch() % Timestamp::kMicrosecondsPerSeconds) * 1000;
    newValue.it_value = stampspec;
    //flag must be 1
    int ret = ::timerfd_settime(timerfd_, 1, &newValue, &oldValue);
    //success return 0
    if(ret)
    {
        std::cout << "timerfd_settime failed" << std::endl;
    }
}

//return pTimer is earlist
bool TimerQueue::insert(Timer* pTimer)
{
    bool isEarliest = false;
    Timestamp stamp = pTimer->getStamp();
    if(timers_.empty() || stamp < timers_.begin()->first)
    {
        isEarliest = true;
    }
    auto ret = timers_.insert(Entry(stamp, pTimer));
    if(!ret.second)
    {
        std::cout << "timer insert failed" << std::endl;
    }
    return isEarliest;
}

void TimerQueue::doAdd(Timer* pTimer)
{
    bool isEarliest = insert(pTimer);
    if(isEarliest)
    {
        settimes(pTimer->getStamp());
    }
}

void TimerQueue::doCancel(Timer* pTimer)
{
    for(auto it = timers_.begin(); it != timers_.end(); ++it)
    {
        if(it->second == pTimer)
        {
            timers_.erase(it);
            break;
        }
    }
}

Timer* TimerQueue::addInLoop(Timestamp stamp, double interval, Run* run)
{
    Timer* pTimer = new Timer(stamp, run, interval);
    Task add(this, "doAdd", pTimer);
    pEventLoop_->runInLoop(add);
    return pTimer;
}

void TimerQueue::cancelInLoop(Timer* pTimer)
{
    Task cancel(this, "doCancel", pTimer);
    pEventLoop_->runInLoop(cancel);
}

void TimerQueue::run(const std::string& name, void* param)
{
    if(name == "doAdd")
    {
        doAdd(static_cast<Timer*>(param));
    }
    else if(name == "doCancel")
    {
        doCancel(static_cast<Timer*>(param));
    }
}

