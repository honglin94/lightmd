#include "base/Task.h"

using namespace lightmd;

Task::Task(Run* pRun0)
    : pRun0_(pRun0_)
    { }

void Task::dotask()
{
    pRun0_->run0();
}