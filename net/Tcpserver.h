#ifndef LMD_TCPSERVER_H
#define LMD_TCPSERVER_H

#include "net/EventLoop.h"
#include "net/Acceptor.h"
#include "net/Connection.h"
#include "net/Callback.h"

#include <map>
#include <arpa/inet.h>

namespace lightmd
{
class TcpServer: AcceptorCallback
{
public:
    TcpServer(EventLoop* pEventLoop, struct sockaddr_in* pAddrin);
    void start();
    void setUser(User* pUser_);

    virtual void newConnection(int connfd);

private:
    struct sockaddr_in* pAddrin_;
    EventLoop* pEventLoop_;
    Acceptor* pAcceptor_;
    std::map<int, Connection*> connections_;
    User* pUser_;

};

}

#endif