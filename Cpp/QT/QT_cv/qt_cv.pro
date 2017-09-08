#-------------------------------------------------
#
# Project created by QtCreator 2017-06-27T23:39:48
#
#-------------------------------------------------

QT       += core gui
CONFIG += c++14

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = Qt_cv_test
TEMPLATE = app


SOURCES += main.cpp

HEADERS  += cvimagewidget.h

INCLUDEPATH += /usr/local/include/opencv
LIBS += -lopencv_shape -lopencv_stitching -lopencv_objdetect \
-lopencv_videostab -lopencv_calib3d -lopencv_features2d \
-lopencv_highgui -lopencv_videoio -lopencv_imgcodecs \
-lopencv_video -lopencv_photo -lopencv_ml -lopencv_imgproc \
-lopencv_flann -lopencv_core -pthread
