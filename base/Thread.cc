#include "base/Thread.h"
#include "base/CurrentThread.h"

#include <pthread.h>

using namespace lightmd;

//task should not be const, cause const class only can use const member
void* globalRun(void* pTask)
{
    static_cast<Task*>(pTask)->dotask();
    return 0;
}

Thread::Thread(const Task& task)
    :task_(task), tid_(static_cast<pid_t>(CurrentThread::tid()))
    { }

pid_t Thread::gettid()
{
    return tid_;
}

void Thread::start()
{
    pthread_t threadId_;
    //function pointer need void*(*)(void*)
    ::pthread_create(&threadId_, NULL, globalRun, &task_);
}