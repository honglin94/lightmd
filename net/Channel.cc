#include "net/Channel.h"
#include "net/EventLoop.h"

#include <unistd.h> //NULL
#include <sys/epoll.h>

using namespace lightmd;

Channel::Channel(EventLoop* pEventloop, int fd)
    : pEventLoop_(pEventloop), fd_(fd), event_(0), revent_(0), isInPool_(false), pCallback_(NULL)  
    { }

void Channel::handleEvent()
{
    if(revent_ & EPOLLIN)
    {
        pCallback_->handleRead();
    }
    if(revent_ & EPOLLOUT)
    {
        pCallback_->handleWrite();
    }
}

void Channel::setCallback(ChannelCallback* pCallback)
{
    pCallback_ = pCallback;
}

void Channel::enableReading()
{
    event_ |= EPOLLIN;
    update();
}

void Channel::enableWriting()
{
    event_ |= EPOLLOUT;
    update();
}

void Channel::disableReading()
{
    event_ &= ~EPOLLIN;
    update();
}

void Channel::disableWriting()
{
    event_ &= ~EPOLLOUT;
    update();
}

bool Channel::isReadable()
{
    return event_ & EPOLLIN;
}

bool Channel::isWritable()
{
    return event_ & EPOLLOUT;
}


void Channel::setRevents(int revents)
{
    revent_ = revents;
}

void Channel::trapInPool()
{
    isInPool_ = true;
}

void Channel::update()
{
    pEventLoop_->update(this);
}

int Channel::getfd()
{
    return fd_;
}

int Channel::getEvent()
{
    return event_;
}

bool Channel::isInPool()
{
    return isInPool_;
}



