import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15


Item {
    id: addTabContent

    property int xValue: 24
    property int yValue: 0

    property int space: 10


    PassWd_addField{
        id: addTitle
        aboveText: "T i t l e :"
        placeholderText: "enter Title"
        xPos: addTabContent.xValue
        yPos: yValue
    }

    PassWd_addField{
        id: addEmail
        aboveText: "E m a i l :"
        placeholderText: "enter Email"

        xPos: addTabContent.xValue
        yPos: addTitle.yPos + addTitle.h*2 + addTabContent.space
    }

    PassWd_addField{
        id: addUsername
        aboveText: "U s e r n a m e :"
        placeholderText: "enter Username"

        xPos: addEmail.xPos + addEmail.w + addTabContent.space
        yPos: addEmail.yPos
    }

    PassWd_addField{
        id: addUrl
        aboveText: "U r l :"
        placeholderText: "enter Url"

        w: addUsername.xPos - addEmail.xPos + addEmail.w

        xPos: addTabContent.xValue
        yPos: addEmail.yPos + addEmail.h*2 + addTabContent.space
    }

    RoundButton {
        id: passWdButton

        height: 64
        width: 64

        flat: true

        x: addTabContent.xValue
        y: addUrl.yPos + addUrl.h*3 + addTabContent.space - 16

        display: AbstractButton.IconOnly

        icon.source: "qrc:///img/PassWdIcon.svg"
        icon.width: passWdButton.width
        icon.height: passWdButton.height
        icon.color: "transparent"

        hoverEnabled: true

        ToolTip{
            delay: 1000
            timeout: 5000
            visible: passWdButton.hovered
            text: qsTr("Generates a random and secure PassWd")
            font.pointSize: 8
        }
        

    }

    PassWd_addField{
        id: addPassWd
        aboveText: ""
        placeholderText: "enter PassWd"
        
        isPassword: true

        xPos: addTabContent.xValue  + passWdButton.width + addTabContent.space
        yPos: passWdButton.y - addPassWd.h + 16
    }


    RoundButton {
        id: showHidePassword

        height: 32
        width: 32

        flat: true

        x: addPassWd.xPos + addPassWd.w + 5
        y: passWdButton.y + 15

        display: AbstractButton.IconOnly

        icon.source: "qrc:///img/eye.png"
        icon.width: showHidePassword.width
        icon.height: showHidePassword.height
        icon.color: "transparent"

        // Knoedel oder Klartext? Das ist hier die Frage
        onClicked: {
            if(addPassWd.isPassword == true){
                addPassWd.isPassword = false
            }
            else{
                addPassWd.isPassword = true
            }
        }
    }

    Button {
        id: addButton

        height: 30
        width: addUrl.xPos + addUrl.w - addButton.x

        x: showHidePassword.x + showHidePassword.width + addTabContent.space + 5
        y: passWdButton.y + 16

        display: AbstractButton.TextOnly

        text: "add"
    }

}