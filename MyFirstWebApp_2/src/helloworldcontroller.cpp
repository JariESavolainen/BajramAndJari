#include "helloworldcontroller.h"

HelloWorldController::HelloWorldController(QObject* parent)
    : HttpRequestHandler(parent)
{
    // empty
}

HelloWorldController::~HelloWorldController()
{
    // empty
}

void HelloWorldController::service(HttpRequest& request, HttpResponse& response)
{
    response.write("Hello World, terve, terve");
}
