#ifndef LMD_CURRENTTHREAD_H
#define LMD_CURRENTTHREAD_H

#include <sys/syscall.h> //SYS_gettid
#include <unistd.h> //syscall

namespace lightmd
{
namespace CurrentThread
{
    //why declear instead of define?
    __thread int t_cachedTid = 0;

    inline void cachedTid()
    {
        t_cachedTid = static_cast<int>(::syscall(SYS_gettid));
    }

    inline int tid()
    {
        if(t_cachedTid == 0)
        {
            cachedTid();
        }
        return t_cachedTid;
    }
}
}

#endif