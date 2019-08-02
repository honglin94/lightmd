#include "http/HttpRequest.h"

using namespace lightmd;

HttpRequest::HttpRequest()
    : method_("unknown"), version_("unknown")
    { }

bool HttpRequest::setMethod(const string& method)
{
    bool isValid = false;
    if(method == "GET" || method == "POST") 
    {
        isValid = true;
    }
    else if(method == "PUT" || method == "DELETE")
    {
        isValid = true;
    }
    else if(method == "HAED")
    {
        isValid = true;
    }
    if(isValid)
    {
        method_ = method;
    }
    return isValid;
}

const string& HttpRequest::getMethod() const
{
    return method_;
}

bool HttpRequest::setVersion(const string& version) 
{
    bool isValid = false;
    if(version == "HTTP/1.0" || version == "HTTP/1.1")
    {
        isValid = true;
    }
    if(isValid)
    {
        version_ = version;
    }
    return isValid;
}

const string& HttpRequest::getVersion() const
{
    return version_;
}

void HttpRequest::setPath(const string& path)
{
    path_ = path;
}

const string& HttpRequest::getPath() const 
{
    return path_;
}

void HttpRequest::setQuery(const string& query)
{
    query_ = query;
}

const string& HttpRequest::getQuery() const
{
    return query_;
}

void HttpRequest::setReceiveTime(Timestamp t)
{
    receiveTime_ = t;
}

Timestamp HttpRequest::getReceiveTime() const
{
    return receiveTime_;
}

void HttpRequest::addHeader(const string& field, const string& val)
{
   headers_[field] = val; 
}

string HttpRequest::getHeader(const string& field) const
{
    string val;
    auto it = headers_.find(field);
    if(it != headers_.end())
    {
        val = it->second;
    }
    return val;
}

const std::map<string, string>& HttpRequest::getHeaders() const
{
    return headers_;
}

void HttpRequest::swap(HttpRequest& that)
{
    method_.swap(that.method_);
    version_.swap(that.version_);
    path_.swap(that.path_);
    query_.swap(that.query_);
    receiveTime_.swap(that.receiveTime_);
    headers_.swap(that.headers_);
}





