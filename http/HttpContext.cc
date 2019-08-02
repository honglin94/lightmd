#include "http/HttpContext.h"

using namespace lightmd;

using std::size_t;

HttpContext::HttpContext()
    : state_(kExpectRequestLine)
    { }

bool HttpContext::parseRequestLine(const string& requestLine)
{
    bool isSuccess = false;
    //find method end
    size_t first_space = requestLine.find(' ');
    if(first_space != string::npos
        && request_.setMethod(requestLine.substr(0, first_space)))
    {
        //find url end
        size_t second_space = requestLine.substr(first_space + 1).find(' ');
        if(second_space != string::npos)
        {
            const string url = requestLine.substr(first_space + 1, second_space);
            //find url.path end
            size_t question = url.find('?');
            if(question != string::npos)
            {
                request_.setPath(url.substr(0, question));
                request_.setQuery(url.substr(question + 1));
            }
            else
            {
                request_.setPath(url);
            }
            //set version
            isSuccess = request_.setVersion(requestLine.substr(second_space + 1));  
        }
    }
    return isSuccess;
}

bool HttpContext::parseRequest(string& inbuf, Timestamp receiveTime)
{
    bool Continue = true;
    bool hasMore = true;
    while(hasMore)
    {
        if(state_ == kExpectRequestLine)
        {
            size_t crlf = inbuf.find("\r\n");
            if(crlf != string::npos)
            {
                Continue = parseRequestLine(inbuf.substr(0, crlf));
                if(Continue)
                {
                    request_.setReceiveTime(receiveTime);
                    inbuf.erase(0, crlf + 2);
                }
                else
                {
                    hasMore = false;
                }
            }
            else
            {
                hasMore = false;
            }
        }
        else if(state_ == kExpectHeaders)
        {
            size_t crlf = inbuf.find("\r\n");   
            if(crlf != string::npos)
            {
                const string header(inbuf.substr(0, crlf));
                size_t colon = header.find(':');
                if(colon != string::npos)
                {
                    request_.addHeader(header.substr(0, colon), header.substr(colon + 1));
                }
                else 
                {
                    //empty line, end of header
                    state_ = kGotAll;
                    hasMore = false;
                }
                inbuf.erase(0, crlf + 2);
            }
            else
            {
                hasMore = false;
            }
        }
        else if(state_ == kExpectBody)
        { }
    }
    return Continue;
}

void HttpContext::reset()
{
    state_ = kExpectRequestLine;
    HttpRequest request;
    request_.swap(request);
}

const HttpRequest& HttpContext::getRequest() const
{
    return request_;
}

bool HttpContext::isGotAll() const
{
    return state_ == kGotAll;
}


