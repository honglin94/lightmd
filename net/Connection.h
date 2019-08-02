#ifndef LMD_CONNECTION_H
#define LMD_CONNECTION_H

#include "net/EventLoop.h"
#include "Channel.h"
#include "Callback.h"

namespace lightmd
{
class Connection: Run, ChannelCallback
{
public:
    Connection(EventLoop* pEventLoop_, int connfd);
    void send(const std::string& msg);
    void doSend(const std::string& msg);
    void setUser(User* pUser_);
    void onConnection();

    virtual void handleRead();
    virtual void handleWrite();
    virtual void run(const std::string& name, void* param);

private:
    int connfd_;
    User* pUser_;
    EventLoop* pEventLoop_;
    Channel* pConnfdChannel_;
    std::string inbuf_;
    std::string outbuf_;
    
};
}

#endif