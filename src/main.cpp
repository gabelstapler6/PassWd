#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QIcon>
#include "guiController.h"

int main(int argc, char* argv[]){

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    engine.load("qrc:/qml/main.qml");

    app.setWindowIcon(QIcon(":/img/PassWdIcon.svg"));

    return app.exec();
}