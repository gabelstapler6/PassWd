import QtQuick 2.12
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.1



Item{
    id: addField

    implicitHeight: 220
    implicitWidth: 60

    property int xPos: 0
    property int yPos: 0
    
    property int w: 220
    property int h: 30

    property string aboveText: "aboveText"

    property string colorAbove: "transparent"
    property string colorBelow: "transparent"

    property string textColor: "black"
    property int fontSize: 12

    property int rectangleRadius: 0

    property string placeholderText: "placeholder"

    property string borderColor: "black"

    property int borderWidth: 1

    property int maximumTextLength: 42

    property bool isPassword: false

    Rectangle {
        id: aboveRect
        
        width: addField.w
        height: addField.h

        color: addField.colorAbove
        x: addField.xPos
        y: addField.yPos

        radius: addField.rectangleRadius
        
        Text {
            id: aboveText
            
            
            // anchors.centerIn: parent
            
            anchors.horizontalCenter: parent.horizontalLeft
            
            anchors.verticalCenter: parent.verticalCenter

                        
            text: "  " + addField.aboveText
            font.pointSize: addField.fontSize

            color: addField.textColor
            font.bold: true
        }

    }
    
    TextField{
        
        anchors.left: aboveRect.left
        anchors.top: aboveRect.bottom

        placeholderText: addField.placeholderText

        width: addField.w

        maximumLength: addField.maximumTextLength
        
        echoMode: addField.isPassword ? TextInput.Password : TextInput.Normal

        style: TextFieldStyle{
            textColor: addField.textColor

            background: Rectangle {
                radius: addField.rectangleRadius
                color: addField.colorBelow
                implicitWidth: addField.w
                implicitHeight: addField.h
                
                border.color: addField.borderColor
                border.width: addField.borderWidth
            }
           
        }

    }

}