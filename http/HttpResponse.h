#ifndef LMD_HTTPRESPONSE_H
#define LMD_HTTPRESPONSE_H

#include <string>
#include <map>

using std::string;

namespace lightmd
{
class HttpResponse
{
public:
    HttpResponse(bool closed);
    
    void setStatusCode(const string& code);
    void setStatusMessage(const string& msg);
    void addHeader(const string& field, const string& val);
    void setBody(const string& body);
    void setConnectionClosed();
    bool getClosed();

    void appendToBuffer(string& outbuf) const;

private:
    bool closed_;
    string statusCode_;
    string statusMessage_;
    std::map<string, string> headers_;
    string body_;
};

}

#endif