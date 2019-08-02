#include "net/Acceptor.h"
#include "net/EventLoop.h"
#include "net/Config.h"

#include <sys/socket.h>
#include <unistd.h>
#include <fcntl.h>
#include <iostream>

using namespace lightmd;

Acceptor::Acceptor(EventLoop* pEventLoop, struct sockaddr_in* pAddrin)
    : pEventLoop_(pEventLoop), pAddrin_(pAddrin), listenfd_(-1), pListenfdChannel_(NULL)
    { }

Acceptor::~Acceptor()
{
    if(listenfd_ != -1)
    {
        ::close(listenfd_);
    }
}

void Acceptor::start()
{
    listenfd_ = listen();
    pListenfdChannel_ = new Channel(pEventLoop_, listenfd_);
    pListenfdChannel_->setCallback(this);
    pListenfdChannel_->enableReading();
}

int Acceptor::listen()
{
    int on = 1;
    int listenfd = ::socket(AF_INET, SOCK_STREAM, 0);
    ::fcntl(listenfd, F_SETFD, O_NONBLOCK);
    ::setsockopt(listenfd, SOL_SOCKET, SO_REUSEADDR, &on, sizeof(on));

    if(::bind(listenfd, (struct sockaddr*)pAddrin_, sizeof(*pAddrin_)) == -1)
    {
        std::cout << "bind error, errno: " << errno << std::endl;
    }

    if(::listen(listenfd, MAX_LISTENFD) == -1)
    {
        std::cout << "listen error, errno: " << errno << std::endl;
    }

    return listenfd;
}

void Acceptor::handleRead()
{
    struct sockaddr_in cliaddr;
    socklen_t cliaddrLen = sizeof(struct sockaddr_in);
    int connfd = ::accept4(listenfd_, (struct sockaddr*)&cliaddr, (socklen_t*)&cliaddrLen, SOCK_NONBLOCK | SOCK_CLOEXEC);
    if(connfd > 0)
    {
        std::cout << "new connection from"
                << "[" << inet_ntoa(cliaddr.sin_addr)
                << ":" << ntohs(cliaddr.sin_port) << "]"
                << " connfd:" << connfd 
                << std::endl;
    }
    else
    {
        std::cout << "accept error, connfd:" << connfd 
                << " errno:" << errno
                << std::endl;
    }
    pCallback_->newConnection(connfd);
}

void Acceptor::handleWrite()
{

}

void Acceptor::setCallback(AcceptorCallback* pCallback)
{
    pCallback_ = pCallback;
}

