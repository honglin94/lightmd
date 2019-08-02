#ifndef LMD_CALLBACK_H
#define LMD_CALLBACK_H

#include <string>
using std::string;

namespace lightmd
{
class ChannelCallback
{
public:
    virtual void handleRead() = 0;
    virtual void handleWrite() = 0;
};

class AcceptorCallback
{
public:
    virtual void newConnection(int connfd) = 0;
};

class Connection;
class User
{
public:
    //ServerUser care about 3 callbacks: AfterConnEstablished; AfterMessageArrived; AfterMessageSend
    virtual void onConnection(Connection* pCon) = 0;
    virtual void onMessage(Connection* pCon, string& buf) = 0;
    virtual void onWriteComplete(Connection* pCon) = 0;
};
}

#endif