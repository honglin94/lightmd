#include "http/HttpServer.h"

using namespace lightmd;

#include <iostream>

HttpServer::HttpServer(EventLoop* pEventloop, struct sockaddr_in* pAddrin)
    : server_(pEventloop, pAddrin) 
{

}
    
void HttpServer::setHttpCallback(HttpCallback callback)
{
    callback_ = callback;
}

void HttpServer::start()
{
    server_.setUser(this);
    server_.start();
}

void HttpServer::onMessage(Connection* pConn, string& buf)
{
    if(!context_.parseRequest(buf, Timestamp::now()))
    {
        pConn->send("HTTP/1.1 400 Bad Request\r\n\r\n");
    }
    if(context_.isGotAll())
    {
        doResponse(pConn, context_.getRequest());
        context_.reset();
    }
}

void HttpServer::onConnection(Connection* pConn)
    { }

void HttpServer::onWriteComplete(Connection* pConn)
    { }

void HttpServer::doResponse(Connection* pConn, const HttpRequest& request)
{
    const string connection = request.getHeader("Connection");
    bool closed(connection == "close");
    HttpResponse response(closed);
    //fill response
    callback_(request, response);
    string data;
    response.appendToBuffer(data);
    pConn->send(data);
}