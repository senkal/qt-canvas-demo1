TEMPLATE = app

QT += qml quick
CONFIG += c++11

SOURCES += main.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
#QML_IMPORT_PATH =

# Default rules for deployment.
#include(deployment.pri)

DISTFILES += \
    README.md \
    qt-demos.qmlproject \
    deployment.pri \
    assets/WaterDemo/img/background.png \
    assets/WaterDemo/img/logo-bubble.png
