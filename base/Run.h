#ifndef LMD_RUN_H
#define LMD_RUN_H

#include <string>

namespace lightmd
{
class Run
{
public:
    virtual void run(const std::string& name, void* param) = 0;
};

}

#endif