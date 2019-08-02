#include "Tcpserver.h"

using namespace lightmd;

#include <iostream>

TcpServer::TcpServer(EventLoop* pEventLoop, struct sockaddr_in* pAddrin)
    : pEventLoop_(pEventLoop), pAddrin_(pAddrin), pAcceptor_(NULL), pUser_(NULL)
    { }

void TcpServer::start()
{
    pAcceptor_ = new Acceptor(pEventLoop_, pAddrin_);
    pAcceptor_->setCallback(this); 
    pAcceptor_->start(); 
}

void TcpServer::setUser(User* pUser)
{
    pUser_ = pUser;
}

void TcpServer::newConnection(int connfd)
{
    Connection* conn = new Connection(pEventLoop_, connfd);
    std::cout << "connection established, connfd: " << connfd << std::endl;
    connections_[connfd] = conn;
    conn->setUser(pUser_);
    conn->onConnection();
}
