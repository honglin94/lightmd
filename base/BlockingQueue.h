#ifndef LMD_BLOCKINGQUEUE_H
#define LMD_BLOCKINGQUEUE_H

#include "base/Condition.h"
#include "base/Task.h"
#include <deque>

namespace lightmd
{

//T may be data or function pointer
template<typename T>
class BlockingQueue
{
public:
    BlockingQueue()
        : cond_(mutex_)
        { }
    
    void push(const T& elem)
    {
        MutexLockGuard lock(mutex_);
        queue.push_back(elem);
        cond_.notify();
    }

    T pop()
    {
        MutexLockGuard lock(mutex_);
        while(queue.empty())
        {
            cond_.wait();
        }
        T elem = queue.front();
        queue.pop_front();
        return elem;
    }

private:
    std::deque<T> queue;
    MutexLock mutex_;
    Condition cond_;
};

}

#endif