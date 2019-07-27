#ifndef LMD_TIMESTAMP_H
#define LMD_TIMESTAMP_H

#include <sys/types.h>
#include <string>

namespace lightmd
{
class Timestamp
{
public:
    Timestamp();
    Timestamp(int64_t microsecondsSinceEpoch);
    std::string toString();
    static Timestamp now();
    static Timestamp nowAfterSeconds(double seconds);
    int64_t getMicrosecondsSinceEpoch();

    //consider why static member must be const when initial in class?
    static const int kMicrosecondsPerSeconds = 1000 * 1000;

private:
    int64_t microsecondsSinceEpoch_;
};

inline bool operator<(Timestamp l, Timestamp r)
{
    return l.getMicrosecondsSinceEpoch() < r.getMicrosecondsSinceEpoch();
}

inline bool operator==(Timestamp l, Timestamp r)
{
    return l.getMicrosecondsSinceEpoch() == r.getMicrosecondsSinceEpoch();
}

}

#endif