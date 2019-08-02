#ifndef LMD_HTTPCONTEXT_H
#define LMD_HTTPCONTEXT_H

#include "http/HttpRequest.h"


namespace lightmd
{

class HttpContext
{
enum ParseState
{
    kExpectRequestLine,
    kExpectHeaders,
    kExpectBody,
    kGotAll
};

public:
    HttpContext();
    bool parseRequest(string& inbuf, Timestamp receiveTime);
    bool isGotAll() const;
    void reset();

    const HttpRequest& getRequest() const;

private:
    bool parseRequestLine(const string& requestLine);
    ParseState state_;
    HttpRequest request_;

};
}

#endif
