#ifndef LMD_CHANNELCALLBACK_H
#define LMD_CHANNELCALLBACK_H

namespace lightmd
{
class ChannelCallback
{
public:
    virtual void handleWrite() = 0;
    virtual void handleRead() = 0;
};
}

#endif