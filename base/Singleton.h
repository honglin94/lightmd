#ifndef LMD_SINGLETON_H
#define LMD_SINGLETON_H

#include "base/noncopyable.h"

namespace lightmd
{

class Singleton: noncopyable
{
public:
    static Singleton& init()
    {
        static Singleton val_;
        return val_;
    }

private:
    Singleton();
    ~Singleton();

};

}

#endif