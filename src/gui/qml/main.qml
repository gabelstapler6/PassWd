import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

import "./custom"


ApplicationWindow{
    id: app
    visible: true
    title: "PassWd"

    width: 830
    height: 560

    // maximumHeight : 560
    // maximumWidth : 830
    minimumHeight : 560
    minimumWidth : 830
    
    menuBar: Rectangle{
        color: "lightgray"
        height: 10
        width: app.width
    }

    TabBar{
        id: passWdTabBar
        width: parent.width
        spacing: 2
        
        background: Rectangle{
            
            color: "lightgray"
        }

        TabButton{
            id: homeTabButton
            text: "Home"
            
            width: 120

            display: AbstractButton.TextBesideIcon

            icon.source: "qrc:///img/PassWdHome.png"
            icon.color: passWdTabBar.currentIndex == 0 ? "black" :"white"

            // background: Rectangle {
            //     color: passWdTabBar.currentIndex == 0 ? "white" :"gray" 
            // }
        }

        TabButton{
            id: passWdTabButton
            text: "PassWd"
            width: 50

            display: AbstractButton.IconOnly

            icon.source: "qrc:///img/PassWdIcon.svg"
            icon.color: "transparent"
            icon.height: 30
            icon.width: 30

            // background: Rectangle {
            //     color: passWdTabBar.currentIndex == 1 ? "white" :"gray"
            // }
        }

        TabButton{
            id: addTabButton
            text: "Add"
            width: 120

            // display: AbstractButton.BesideIcon

            icon.source: "qrc:///img/PassWdAdd.png"
            icon.color: passWdTabBar.currentIndex == 2 ? "black" :"white"

            // background: Rectangle {
            //     color: passWdTabBar.currentIndex == 2 ? "white" :"gray"
            // }
        }
    }


    StackLayout {
        width: parent.width
        currentIndex: passWdTabBar.currentIndex

        Item {
            id: homeTab
        }

        Item {
            id: myPassWdTab
        }
        Item {
            id: addTab
            PassWd_addTabContent {
                yValue: 62
            }
        }
        
    }
}