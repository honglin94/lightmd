#ifndef LMD_NONCOPYABLE
#define LMD_NONCOPYABLE

namespace lightmd
{

class noncopyable
{
public:
    noncopyable(noncopyable&) = delete;
    noncopyable& operator=(const noncopyable&) = delete;
protected:
    noncopyable();
    ~noncopyable();
};

}
#endif