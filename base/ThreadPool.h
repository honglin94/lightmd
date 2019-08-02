#ifndef LMD_THREADPOOL_H
#define LMD_THREADPOOL_H

#include "base/BlockingQueue.h"
#include "base/Task.h"
#include "base/Thread.h"

#include <vector>

namespace lightmd
{
class ThreadPool: Run
{
public:
    void start(int threadNums);
    void addTask(const Task& task);
    void doTask();
    virtual void run(const std::string& name, void* param);

private:
    std::vector<Thread*> pThreads_;
    BlockingQueue<Task> tasks_;  //blocking queue is thread-safe
};

}

#endif