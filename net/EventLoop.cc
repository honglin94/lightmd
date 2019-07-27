#include "net/EventLoop.h"
#include "net/Channel.h"
#include "net/Epoll.h"
#include "base/CurrentThread.h"

#include <sys/eventfd.h>
#include <unistd.h>
#include <iostream>

using namespace lightmd;

EventLoop::EventLoop()
    : pPoller_(new Epoll()), tid_(CurrentThread::tid()), callingPendingFunctors_(false), quit_(false), pEventfdChannel_(NULL)
{
    eventfd_ = createEventfd();
    Channel* pChannel = new Channel(this, eventfd_);
    pChannel->setCallback(this);
    pEventfdChannel_ = pChannel;
}

int EventLoop::createEventfd()
{
    int efd = ::eventfd(0, EFD_CLOEXEC | EFD_NONBLOCK);
    if(efd < 0)
    {
        std::cout << "createEventfd failed" << std::endl;
    }
    return efd;
}

void EventLoop::handleRead()
{
    int64_t buf; 
    int n = ::read(eventfd_, &buf, sizeof(buf));
    if(n != 8)
    {
        std::cout << "EventLoop::handleRead() failed";
    }
}

void EventLoop::wakeup()
{
    int64_t buf = 1;
    int n = ::write(eventfd_, &buf, sizeof(buf));
    if(n != 8)
    {
        std::cout << "EventLoop::wakeup() failed";
    }
}

void EventLoop::runInLoop(Task& task)
{
    if(isInLoop())
    {
        task.dotask();
    }
    else
    {
        queueInLoop(task);
    }
}

bool EventLoop::isInLoop()
{
    return tid_ == CurrentThread::tid();
}

void EventLoop::queueInLoop(const Task& task)
{
    {
        MutexLockGuard lock(mutex_);
        pendingFunctors.push_back(task);
    }
    if(!isInLoop() || callingPendingFunctors_)
    {
        wakeup();
    }
}

void EventLoop::update(Channel* pChannel)
{
    pPoller_->update(pChannel);
}

void EventLoop::doPendingFunctors()
{
    std::vector<Task> functors;
    {
        MutexLockGuard lock(mutex_);
        functors.swap(pendingFunctors);
    }
    for(int i = 0; i < functors.size(); ++i)
    {
        functors[i].dotask();
    }
}


