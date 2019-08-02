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
    bool valid();
    static Timestamp now();
    int64_t getMicrosecondsSinceEpoch() const;
    void swap(Timestamp& that);

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

inline Timestamp after(Timestamp time, double seconds)
{
    int64_t microseconds = time.getMicrosecondsSinceEpoch();
    return Timestamp(microseconds + seconds * Timestamp::kMicrosecondsPerSeconds);
}

}

#endif