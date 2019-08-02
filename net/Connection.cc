#include "net/Connection.h"

#include <unistd.h>
#include <iostream>

using namespace lightmd;

Connection::Connection(EventLoop* pEventLoop, int connfd)
    : pEventLoop_(pEventLoop), connfd_(connfd)
{
    pConnfdChannel_ = new Channel(pEventLoop_, connfd_);
    pConnfdChannel_->setCallback(this);
    pConnfdChannel_->enableReading();
}

void Connection::send(const std::string& msg)
{
    Task task(this, "doSend", (void*)&msg);
    pEventLoop_->runInLoop(task);
}

void Connection::doSend(const std::string& msg)
{
    int n = 0;
    if(outbuf_.empty())
    {
        n = ::write(connfd_, msg.c_str(), msg.size()) ;
        if(n < 0)
        {
            std::cout << "connection send error" << std::endl;
        }
        if(n == msg.size())
        {
            Task task(this, "onWriteComplete", NULL);
            pEventLoop_->runInLoop(task);
        }
    }

    if(n < msg.size())
    {
        outbuf_.append(msg.substr(n));
        pConnfdChannel_->enableWriting();
    }
}

void Connection::handleWrite()
{
    if(pConnfdChannel_->isWritable())
    {
        int n = ::write(connfd_, outbuf_.c_str(), outbuf_.size());
        if(n > 0)
        {
            outbuf_.assign(outbuf_.substr(n));
            if(outbuf_.empty())
            {
                pConnfdChannel_->disableWriting();
                Task task(this, "onWriteComplete", NULL);
                pEventLoop_->runInLoop(task);
            }
        }
    }
}

void Connection::handleRead()
{
    char msg[8192];
    int n =::read(connfd_, msg, sizeof(msg));
    if(n < 0)
    {
        if(errno == ECONNRESET)
        {
            std::cout << "ECONNRESET closed, connfd:" << connfd_ << std::endl;
            close(connfd_);
        }
    }
    else if(n == 0)
    {
        std::cout << "read 0 closed, connfd:" << connfd_ << std::endl;
        close(connfd_);
    }
    else
    {
        inbuf_.append(std::string(msg, n));
        pUser_->onMessage(this, inbuf_);
    }
}

void Connection::onConnection()
{
    pUser_->onConnection(this);
}

void Connection::run(const std::string& name, void* param)
{
    if(name == "doSend")
    {
        doSend(*static_cast<std::string*>(param));
    }
    else if(name == "onWriteComplete")
    {
        pUser_->onWriteComplete(this);
    }
}

void Connection::setUser(User* pUser)
{
    pUser_ = pUser;
}