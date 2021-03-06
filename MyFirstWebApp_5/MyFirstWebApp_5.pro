QT  += core
QT  -= gui
QT  += network

TARGET = MyFirstWebApp_5

CONFIG   += console

TEMPLATE = app

SOURCES += src/main.cpp \
    src/helloworldcontroller.cpp \
    src/listdatacontroller.cpp \
    src/requestmapper.cpp \
    src/logincontroller.cpp \
    src/cookietestcontroller.cpp

HEADERS += \
    src/helloworldcontroller.h \
    src/listdatacontroller.h \
    src/requestmapper.h \
    src/logincontroller.h \
    src/cookietestcontroller.h

OTHER_FILES += etc/webapp1.ini

#include(../QtWebApp/QtWebApp/httpserver/httpserver.pri)
include(../QtWebApp/httpserver/httpserver.pri)
