#include "net/Epoll.h"
#include "net/Channel.h"

#include <errno.h>
#include <iostream>

using namespace lightmd;

Epoll::Epoll()
{
    epollfd_ = epoll_create1(0);
    if(epollfd_ <= 0)
    {
        std::cout << "epoll_create1 failed, errno: " << epollfd_ << std::endl;
    }
}

//pChannels parameter means fill instead of return, the same as buffer in read
void Epoll::poll(std::vector<Channel*>* pChannels)
{
    //non-blocking io means fd is non-blocking instead of epollfd, epollfd must be blocked
    int rfds = ::epoll_wait(epollfd_, events_, MAX_EVENTS, -1);
    if(rfds == -1)
    {
        std::cout << "epoll_wait error, errno: " << errno << std::endl;
        return ;
    }
    for(int i = 0; i < rfds; ++i)
    {
        Channel* pChannel = static_cast<Channel*>(events_[i].data.ptr);
        pChannel->setRevents(events_[i].events);
        pChannels->push_back(pChannel);
    }
}

void Epoll::update(Channel* pChannel)
{
    if(pChannel->isInPool())
    {
        struct epoll_event ev;
        ev.events = pChannel->getEvent();
        ev.data.ptr = pChannel;
        int fd = pChannel->getfd();
        ::epoll_ctl(epollfd_, EPOLL_CTL_MOD, fd, &ev);
    }
    else
    {
        struct epoll_event ev;
        ev.events = pChannel->getEvent();
        ev.data.ptr = pChannel;
        int fd = pChannel->getfd();
        ::epoll_ctl(epollfd_, EPOLL_CTL_ADD, fd, &ev);
        pChannel->trapInPool();
    }
}

    