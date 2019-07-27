#include "net/Timestamp.h"

#define __STDC_FORMAT_MACROS
#include <inttypes.h>
#undef __STDC_FORMAT_MACROS 
#include <sys/time.h>

using namespace lightmd;

Timestamp::Timestamp()
    : microsecondsSinceEpoch_(0)
    { }

Timestamp::Timestamp(int64_t microsecondsSinceEpoch)
    : microsecondsSinceEpoch_(microsecondsSinceEpoch)
    { }

std::string Timestamp::toString()
{
    char buf[32];
    int64_t seconds = microsecondsSinceEpoch_ / kMicrosecondsPerSeconds;
    int64_t microseconds = microsecondsSinceEpoch_ % kMicrosecondsPerSeconds;
    snprintf(buf, 31, "%" PRId64 ".%06" PRId64 "", seconds, microseconds);
    return buf;
}

Timestamp Timestamp::now()
{
    struct timeval tv;
    gettimeofday(&tv, NULL);
    int64_t seconds = tv.tv_sec;
    return Timestamp(seconds * kMicrosecondsPerSeconds + tv.tv_usec);
}

Timestamp Timestamp::nowAfterSeconds(double seconds)
{
    int64_t microseconds = seconds * kMicrosecondsPerSeconds;
    return Timestamp(now().getMicrosecondsSinceEpoch + microseconds);
}


