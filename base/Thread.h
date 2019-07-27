#ifndef LMD_THREAD_H
#define LMD_THREAD_H

#include<sys/types.h>
#include "base/Task.h"

namespace lightmd
{

class Thread
{
public:
    Thread(const Task& task);
    void start();
    pid_t gettid();

private:
    Task task_;
    pid_t tid_;
};

}

#endif