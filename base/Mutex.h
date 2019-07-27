#ifndef LMD_MUTEX_H
#define LMD_MUTEX_H`

#include "base/noncopyable.h"
#include "pthread.h"

namespace lightmd
{
class MutexLock: noncopyable
{
public:
    MutexLock()
    {
        pthread_mutex_init(&pthreadMutex_, NULL);
    }

    ~MutexLock()
    {
        pthread_mutex_destroy(&pthreadMutex_);
    }

    pthread_mutex_t getPthreadMutex()
    {
        return pthreadMutex_;
    }

friend class MutexLockGuard;

private:
    void lock()
    {
        pthread_mutex_lock(&pthreadMutex_);
    }

    void unlock()
    {
        pthread_mutex_unlock(&pthreadMutex_);
    }

    pthread_mutex_t pthreadMutex_;

};

//RAII lock and unlock, not own MutexLock
class MutexLockGuard: noncopyable
{
public:
    MutexLockGuard(MutexLock& mutex)
        : mutex_(mutex)
    {
        mutex_.lock();
    }

    ~MutexLockGuard()
    {
        mutex_.unlock();
    }

private:
    MutexLock& mutex_; 
};

}
#endif