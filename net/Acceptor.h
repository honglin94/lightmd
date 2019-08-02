#ifndef LMD_ACCEPTOR_H
#define LMD_ACCEPTOR_H

#include "net/Channel.h"
#include "net/Callback.h"
#include "arpa/inet.h"

namespace lightmd
{
class Acceptor: ChannelCallback 
{
public:
    Acceptor(EventLoop* pEventLoop, struct sockaddr_in* pAddrin);
    ~Acceptor();
    void setCallback(AcceptorCallback* pCallback);
    void start();

    virtual void handleRead();
    virtual void handleWrite();
    
private:
    int listen();
    int listenfd_;
    AcceptorCallback* pCallback_;
    Channel* pListenfdChannel_;
    EventLoop* pEventLoop_;
    struct sockaddr_in* pAddrin_;
};

}

#endif