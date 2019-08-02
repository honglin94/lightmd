#include "http/HttpResponse.h"

using namespace lightmd;

HttpResponse::HttpResponse(bool closed)
    : statusCode_("unknown"), closed_(closed)
    { }

void HttpResponse::setStatusCode(const string& code)
{
    statusCode_ = code;
}

void HttpResponse::setStatusMessage(const string& msg)
{
    statusMessage_ = msg;
}

void HttpResponse::setBody(const string& body)
{
    body_ = body;
}

void HttpResponse::addHeader(const string& field, const string& val)
{
    headers_[field] = val;
}

void HttpResponse::setConnectionClosed()
{
    closed_ = true;
}

bool HttpResponse::getClosed()
{
    return closed_;
}

void HttpResponse::appendToBuffer(string& outbuf) const
{
    const string responseLine = "HTTP/1.1 " + statusCode_ + " " + statusMessage_ + "\r\n"; 
    outbuf.append(responseLine);
    if(closed_)
    {
        outbuf.append("Connection: close\r\n");
    }
    else
    {
        outbuf.append("Connection: Keep-Alive\r\n");
    }
    
    for(const auto& pair: headers_)
    {
        const string header = pair.first + ": " + pair.second + "\r\n";
        outbuf.append(header);
    }

    outbuf.append("\r\n");
    outbuf.append(body_);
}

