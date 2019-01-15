QT  += core
QT  -= gui
QT  += network

TARGET = MyFirstWebApp_7

CONFIG   += console

TEMPLATE = app

SOURCES += src/main.cpp \
    src/helloworldcontroller.cpp \
    src/listdatacontroller.cpp \
    src/requestmapper.cpp \
    src/logincontroller.cpp \
    src/cookietestcontroller.cpp \
    src/datatemplatecontroller.cpp

HEADERS += \
    src/helloworldcontroller.h \
    src/listdatacontroller.h \
    src/requestmapper.h \
    src/logincontroller.h \
    src/cookietestcontroller.h \
    src/datatemplatecontroller.h

OTHER_FILES += etc/webapp1.ini \
     docroot/files/hello.html

include(../QtWebApp/httpserver/httpserver.pri)
include(../QtWebApp/templateengine/templateengine.pri)

DISTFILES += \
    docroot/listdata.html
