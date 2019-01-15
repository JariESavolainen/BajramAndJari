#ifndef HELLOWORLDCONTROLLER_H
#define HELLOWORLDCONTROLLER_H

#include "httprequesthandler.h"

using namespace stefanfrings;

class HelloWorldController : public HttpRequestHandler {
    Q_OBJECT
public:
    HelloWorldController(QObject* parent = nullptr);
    virtual ~HelloWorldController();
    virtual void service(HttpRequest& request, HttpResponse& response);
};

#endif // HELLOWORLDCONTROLLER_H
