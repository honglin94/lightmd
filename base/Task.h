#ifndef LMD_TASK_H
#define LMD_TASK_H

#include "base/Run.h"

namespace lightmd
{
class Task 
{
public:
    Task(Run* pRun, const std::string& name, void* param);
    void dotask();

private:
    Run* pRun_; //Run is an abstract base, should be referenced by pointer
    std::string name_;
    void* param_;
};

}

#endif