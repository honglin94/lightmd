#ifndef LMD_CHANNEL_H
#define LMD_CHANNEL_H

#include "net/Callback.h"

namespace lightmd
{
class EventLoop;

class Channel
{
public:
    Channel(EventLoop* pEventLoop, int fd);
    void setCallback(ChannelCallback* pCallback);
    void handleEvent();
    void setRevents(int revents);
    void enableWriting();
    void enableReading();
    void disableWriting();
    void disableReading();
    bool isReadable();
    bool isWritable();
    bool isInPool();
    void trapInPool();
    int getfd();
    int getEvent();
    void update();

private:
    EventLoop* pEventLoop_;
    ChannelCallback* pCallback_;
    int fd_;
    int event_;
    int revent_;
    bool isInPool_;
};
}

#endif