import QtQuick
import QtQuick.Window

Window {
    id: main
    width: 640
    height: 480
    visible: true
    color: "white"
    title: qsTr("Hello World")
    ColorAnimation on color {
//                    running:
                    from: "red"
                    to: "black"
                    duration: 1000
                    loops: 100
                }

    Rectangle {
        id: head
        anchors.bottom: neck.top
        anchors.horizontalCenter: neck.horizontalCenter
        width: 93
        height: 70
        color: "grey"
        border.width: 3
    }

    Rectangle {
        id: rightEye
        radius: width
        anchors.horizontalCenter: head.horizontalCenter
        anchors.verticalCenter: head.verticalCenter
        anchors.horizontalCenterOffset: -head.width/4
        anchors.verticalCenterOffset: -head.height/6
        width: 16
        height: 16
        color: "red"
        border.width: 3
        Rectangle{
            id: rightBrow
            x: 0
            y: -3
            width: 20
            height: 3
            color: "black"
            rotation: -345
        }
    }

    Rectangle {
        id: leftEye
        radius: width
        anchors.horizontalCenter: head.horizontalCenter
        anchors.verticalCenter: head.verticalCenter
        anchors.horizontalCenterOffset: head.width/4
        anchors.verticalCenterOffset: -head.height/6
        width: 16
        height: 16
        color: "red"
        border.width: 3
        Rectangle{
            id: leftBrow
            x: -2
            y: -4
            width: 20
            height: 3
            color: "black"
            rotation: -15
        }
    }

    Rectangle {
        id: nose
        radius: width
        anchors.centerIn: head
        width: 12
        height: 25
        color: "green"
        border.width: 3
    }

    Rectangle {
        id: mouth
        anchors.verticalCenter: head.verticalCenter
        anchors.horizontalCenter: head.horizontalCenter
        anchors.verticalCenterOffset: head.height/3
        width: 57
        height: 9
        color: "#ffffff"
        border.color: "black"
        border.width: 3
    }

    Rectangle {
        id: body
        x: 89
        y: 168
        width: 131
        height: 176
        color: "#191970"
    }

    Rectangle {
        id: rightHand
        anchors.left: body.right
        anchors.top: body.top
        width: 55
        height: 31
        color: "grey"

        Rectangle {
            id: rightHand1
            anchors.top: rightHand.bottom
            anchors.right: rightHand.right
            x: 0
            y: 176
            width: 18
            height: 82
            color: "grey"
        }
    }

    Rectangle {
        id: leftHand
        anchors.right: body.left
        anchors.top: body.top
        width: 55
        height: 31
        color: "grey"

        Rectangle {
            id: leftHand1
            anchors.top: leftHand.bottom
            anchors.left: leftHand.left
            x: 0
            y: 176
            width: 18
            height: 82
            color: "grey"
        }
    }

    Rectangle {
        id: neck
        anchors.horizontalCenter: body.horizontalCenter
        anchors.bottom: body.top
        width: 58
        height: 15
        color: "grey"
        border.color: "black"
        border.width: 3
    }

    Rectangle {
        id: leftLeg
        anchors.horizontalCenter: body.horizontalCenter
        anchors.horizontalCenterOffset: body.width-165
        anchors.top: body.bottom
        width: 35
        height: 100
        color: "#800080"
        border.color: "black"
        border.width: 3
        Rectangle {
            id: leftLeg1
            anchors.top: parent.bottom
            anchors.rightMargin: -5
            anchors.right: parent.right
            width: 61
            height: 21
            color: "black"
        }
    }

    Rectangle {
        id: rightLeg
        anchors.horizontalCenter: body.horizontalCenter
        anchors.horizontalCenterOffset: body.width-100
        anchors.top: body.bottom
        width: 35
        height: 100
        color: "#800080"
        border.color: "black"
        border.width: 3
        Rectangle {
            id: rightLeg1
            anchors.top: parent.bottom
            anchors.leftMargin: -5
            anchors.left: parent.left
            width: 61
            height: 21
            color: "black"
        }
    }

    Text {
        id: text1
        x: 278
        y: 98
        width: 349
        height: 63
        text: qsTr("WORK OR DIE !!!")
        font.pixelSize: 45
        }

}
