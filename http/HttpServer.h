#ifndef LMD_HTTPSERVER_H
#define LMD_HTTPSERVER_H

#include "net/Tcpserver.h"
#include "http/HttpContext.h"
#include "http/HttpResponse.h"

#include <functional>

namespace lightmd
{
typedef std::function<void(const HttpRequest&, HttpResponse&)> HttpCallback; 

class HttpServer: User
{
public:
    HttpServer(EventLoop* pEventLoop, struct sockaddr_in* pAddrin);
    void setHttpCallback(HttpCallback callback);
    void start();
    void doResponse(Connection* pCon, const HttpRequest& request);

    virtual void onMessage(Connection* pCon, string& buf);
    virtual void onConnection(Connection* pCon);
    virtual void onWriteComplete(Connection* pCon);


private:
    TcpServer server_;
    HttpContext context_;
    HttpCallback callback_;
};
}

#endif