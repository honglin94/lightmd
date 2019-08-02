#include "base/Task.h"

using namespace lightmd;

Task::Task(Run* pRun, const std::string& name, void* param)
    : pRun_(pRun), name_(name), param_(param)
    { }

void Task::dotask()
{
    pRun_->run(name_, param_);
}