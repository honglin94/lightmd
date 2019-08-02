#include "base/ThreadPool.h"

using namespace lightmd;

void ThreadPool::start(int threadNums)
{
    pThreads_.reserve(threadNums);
    for(int i = 0; i < threadNums; ++i)
    {
        Task task(this, "doTask", NULL);
        Thread* pThread = new Thread(task);
        pThreads_.push_back(pThread);
        pThread->start();
    }
}

void ThreadPool::addTask(const Task& task)
{
    tasks_.push(task);
}

void ThreadPool::doTask()
{
    while(true)
    {
        tasks_.pop().dotask();
    }
}

void ThreadPool::run(const std::string& name, void* param)
{
    if(name == "doTask")
    {
        doTask();
    }
}
