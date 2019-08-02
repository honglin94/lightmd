#ifndef LMD_HTTPREQUEST_H
#define LMD_HTTPREQUEST_H

#include "net/Timestamp.h"

#include <string>
#include <map>

using std::string;

namespace lightmd
{

class HttpRequest
{
public:
    HttpRequest();

    bool setVersion(const string& version);
    const string& getVersion() const;

    bool setMethod(const string& method);
    const string& getMethod() const;

    void setPath(const string& path);
    const string& getPath() const;

    void setQuery(const string& query);
    const string& getQuery() const; 

    void setReceiveTime(Timestamp t);
    Timestamp getReceiveTime() const;

    void addHeader(const string& field, const string& val);
    string getHeader(const string& field) const;
    const std::map<string, string>& getHeaders() const;

    void swap(HttpRequest& that);
    
private:
    string method_;
    string version_;
    string path_;
    string query_;
    Timestamp receiveTime_;
    std::map<string, string> headers_;
};

}

#endif