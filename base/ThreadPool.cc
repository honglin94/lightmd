#include "base/ThreadPool.h"

using namespace lightmd;

void ThreadPool::start(int threadNums)
{
    pThreads_.reserve(threadNums);
    for(int i = 0; i < threadNums; ++i)
    {
        Task task(this);
        Thread* pThread = new Thread(task);
        pThreads_.push_back(pThread);
        pThread->start();
    }
}

void ThreadPool::addTask(const Task& task)
{
    tasks_.push(task);
}

void ThreadPool::run0()
{
    while(true)
    {
        tasks_.pop().dotask();
    }
}
