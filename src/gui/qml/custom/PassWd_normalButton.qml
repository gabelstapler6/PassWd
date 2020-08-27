import QtQuick 2.12
import QtQuick.Controls 2.15
import QtQuick.Controls.Styles 1.1



Item{
    id: normalButton

    property int w: 110
    property int h: 30

    property int xPos: 0
    property int yPos: 0

    property string colorNormal: "steelblue"
    property string colorPressed: "lightsteelblue"

    property string textColor: "black"
    property string buttonText: "Button"
    property int fontSize: 12

    property int rectangleRadius: 0

    property string iconSource: ""

    property string toolTipText: ""


    Rectangle {
        id: rect
        width: normalButton.w
        height: normalButton.h
        x: normalButton.xPos
        y: normalButton.yPos

        color: normalButton.colorNormal
        
        radius: normalButton.rectangleRadius

        Image {
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit

            mipmap: true

            source: normalButton.iconSource
        }
        
        MouseArea {
            id: mA
            anchors.fill: parent

            hoverEnabled: true

            onPressed: {
                rect.color = normalButton.colorPressed
            }
            onReleased: {
                rect.color = normalButton.colorNormal
            }

            onExited: {}
            onWheel: {}

            onClicked: {
                // rect.color = normalButton.colorNormal
                
            }

        }

        Text {
            id: buttonText
            anchors.centerIn: parent
            
            text: normalButton.buttonText
            color: normalButton.textColor
            font.pointSize: normalButton.fontSize
        }
    }
    
}