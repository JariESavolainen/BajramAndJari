QT  += core
QT  -= gui
QT  += network

TARGET = MyFirstWebApp_2

CONFIG   += console

TEMPLATE = app

SOURCES += src/main.cpp \
    src/helloworldcontroller.cpp

HEADERS += \
    src/helloworldcontroller.h

OTHER_FILES += etc/webapp1.ini

#include(../QtWebApp/QtWebApp/httpserver/httpserver.pri)
include(../QtWebApp/httpserver/httpserver.pri)
