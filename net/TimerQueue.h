#ifndef LMD_TIMERQUEUE_H
#define LMD_TIMERQUEUE_H

#include "net/Timer.h"
#include "net/Channel.h"
#include "net/EventLoop.h"

#include <sys/timerfd.h>
#include <set>
#include <vector>

namespace lightmd
{
class TimerQueue: ChannelCallback, Run 
{
public:
    TimerQueue(EventLoop* pEventLoop);
    ~TimerQueue();
    void doAdd(Timer* timer);
    void doCancel(Timer* timer);
    Timer* addInLoop(Timestamp stamp, double interval, Run* run);
    void cancelInLoop(Timer* pTimer);

    virtual void run(const std::string& name, void* param);
    virtual void handleRead();
    virtual void handleWrite();

private:
    EventLoop* pEventLoop_;

    //timerfd 
    int timerfd_;
    int createTimerfd();
    void readTimerfd();
    void settimes(Timestamp stamp);
    Channel* pTimerfdChannel_;

    //Queue
    typedef std::pair<Timestamp, Timer*> Entry;
    typedef std::set<Entry> TimerList;
    TimerList timers_;
    std::vector<Entry> getExpired(Timestamp stamp);
    void reset(const std::vector<Entry>& expired, Timestamp stamp);
    bool insert(Timer* ptimer);
};

}

#endif