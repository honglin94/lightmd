#ifndef LMD_TASK_H
#define LMD_TASK_H

#include "base/Run.h"

namespace lightmd
{
class Task 
{
public:
    Task(Run* pRun0);
    void dotask();

private:
    Run* pRun0_; //Run is an abstract base, should be referenced by pointer
};

}

#endif