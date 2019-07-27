#ifndef LMD_EPOLL_H
#define LMD_EPOLL_H

#include <sys/epoll.h>
#include <vector>

namespace lightmd
{
class Channel;

class Epoll
{
public:
    Epoll();
    void poll(std::vector<Channel*>* pChannels);
    void update(Channel* pChannel);   

private:
    int epollfd_;
    struct epoll_event* events_;
};
}

#endif