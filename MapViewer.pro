#-------------------------------------------------
#
# Project created by QtCreator 2017-01-06T23:42:57
#
#-------------------------------------------------

QT       += core gui opengl

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

TARGET = MapViewer
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

win32{
INCLUDEPATH += C:/opencv/build/include/opencv C:/opencv/build/include/
Debug{
LIBS += -LC:/opencv/build/x86/vc14/lib/ -lopencv_core249d -lopencv_highgui249d -lopencv_imgproc249d
}
Release{
LIBS += -LC:/opencv/build/x86/vc14/lib/ -lopencv_core249 -lopencv_highgui249 -lopencv_imgproc249
}
} # win32 config end

SOURCES += main.cpp\
        widget.cpp \
    mapviewwidget.cpp \
    map.cpp

HEADERS  += widget.h \
    mapviewwidget.h \
    map.h

FORMS    += widget.ui
LIBS += opengl32.lib
