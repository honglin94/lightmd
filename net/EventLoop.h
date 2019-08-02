#ifndef LMD_EVENTLOOP_H
#define LMD_EVENTLOOP_H

#include "net/Callback.h"
#include "base/noncopyable.h"
#include "base/Task.h"
#include "base/Mutex.h"

#include <vector>

namespace lightmd
{
class Epoll;
class Channel;

class EventLoop: ChannelCallback, noncopyable
{
public:
    EventLoop();
    void loop();
    void runInLoop(Task& task);
    void queueInLoop(const Task& task);
    void update(Channel* pChannel);
    bool isInLoop();

    virtual void handleRead();
    virtual void handleWrite();

private:
    Epoll* pPoller_;
    pid_t tid_;
    bool quit_;

    void wakeup();
    void doPendingFunctors();
    int createEventfd();

    MutexLock mutex_;
    std::vector<Task> pendingFunctors;
    int eventfd_;
    Channel* pEventfdChannel_;
    bool callingPendingFunctors_;
};

}

#endif