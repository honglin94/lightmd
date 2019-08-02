#ifndef LMD_TIMER_H
#define LMD_TIMER_H

#include "net/Timestamp.h"
#include "base/Run.h"

namespace lightmd
{
class Timer
{
public:
    Timer(const Timestamp& stamp, Run* run, double interval)
        : stamp_(stamp), id_(stamp), run_(run), interval_(interval)
        { }
    
    Timestamp getStamp()
    {
        return stamp_;
    }

    Timestamp getId()
    {
        return id_;
    }

    void doTimeout()
    {
        run_->run("handleTimeout", NULL);
    }

    void moveToNext()
    {
        stamp_ = after(stamp_, interval_);
    }

    bool isRepeat()
    {
        return interval_ > 0;
    }

private:
    Timestamp stamp_;
    Timestamp id_;
    Run* run_;
    double interval_;
};

}

#endif