#ifndef LMD_CONDITION_H
#define LMD_CONDITION_H

#include "base/Mutex.h"

namespace lightmd
{
class Condition: noncopyable
{
public:
    Condition(MutexLock& mutex)
        : mutex_(mutex)
    {
        pthread_cond_init(&pthreadCond_, NULL);
    }

    ~Condition()
    {
        pthread_cond_destroy(&pthreadCond_);
    }

    void wait()
    {
        pthread_cond_wait(&pthreadCond_, &(mutex_.getPthreadMutex()));
    }

    void notify()
    {
        pthread_cond_signal(&pthreadCond_);
    }

    void notifyAll()
    {
        pthread_cond_broadcast(&pthreadCond_);
    }

private:
    MutexLock& mutex_;
    pthread_cond_t pthreadCond_;
};

}

#endif