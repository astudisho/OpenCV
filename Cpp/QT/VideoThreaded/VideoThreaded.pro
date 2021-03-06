TEMPLATE = app
CONFIG += console c++14
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += main.cpp \
    sharedqueue.cpp

INCLUDEPATH += /usr/local/include/opencv
LIBS += -lopencv_shape -lopencv_stitching -lopencv_objdetect \
-lopencv_videostab -lopencv_calib3d -lopencv_features2d \
-lopencv_highgui -lopencv_videoio -lopencv_imgcodecs \
-lopencv_video -lopencv_photo -lopencv_ml -lopencv_imgproc \
-lopencv_flann -lopencv_core -pthread
