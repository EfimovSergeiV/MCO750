import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

import "./content"
import "../controls"
import "../controls/intBtn"

Item {
    id: root

    //    signal send
    //    onSend: console.log("Send clicked")
    width: 800
    height: 480

    Rectangle {
        id: rectangle
        color: "#ffffff"
        anchors.fill: parent
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0

        //        //        IntDialog {
        //        //            id: integerDialog
        //        //            anchors.centerIn: parent
        //        //        }
        Rectangle {
            id: rectangle1
            height: 28
            color: "#143656"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0

            Label {
                id: label
                color: "#ffffff"
                text: qsTr("Параметры корректора")
                anchors.left: parent.left
                anchors.right: label1.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                verticalAlignment: Text.AlignVCenter
                anchors.bottomMargin: 0
                anchors.topMargin: 0
                anchors.rightMargin: 2
                anchors.leftMargin: 4
                font.styleName: "Regular"
                font.family: "Proxima Nova"
            }

            Label {
                id: label1
                x: 400
                width: 400
                color: "#ffffff"
                text: qsTr("номер участка")
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignBottom
                font.pointSize: 8
                font.styleName: "Regular"
                font.family: "Proxima Nova"
                anchors.rightMargin: 4
                anchors.bottomMargin: 0
                anchors.topMargin: 0
            }
        }

        Rectangle {
            id: rectangle2
            color: "#aebfcd"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: rectangle1.bottom
            //            anchors.bottom: bottomRect.top
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.bottomMargin: 0
            anchors.topMargin: 0

            Row {
                id: row
                height: 21
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                spacing: 3
                anchors.rightMargin: 8
                anchors.leftMargin: 8
                anchors.topMargin: 0

                Label {
                    id: label2
                    width: 76
                    text: qsTr("1")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 8
                    font.styleName: "Regular"
                    font.family: "Proxima Nova"
                }

                Label {
                    id: label3
                    width: 76
                    text: qsTr("2")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 8
                    font.styleName: "Regular"
                    font.family: "Proxima Nova"
                }

                Label {
                    id: label4
                    width: 76
                    text: qsTr("3")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 8
                    font.styleName: "Regular"
                    font.family: "Proxima Nova"
                }

                Label {
                    id: label5
                    width: 76
                    text: qsTr("4")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 8
                    font.styleName: "Regular"
                    font.family: "Proxima Nova"
                }

                Label {
                    id: label6
                    width: 76
                    text: qsTr("5")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 8
                    font.styleName: "Regular"
                    font.family: "Proxima Nova"
                }

                Label {
                    id: label7
                    width: 76
                    text: qsTr("6")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 8
                    font.styleName: "Regular"
                    font.family: "Proxima Nova"
                }

                Label {
                    id: label8
                    width: 76
                    text: qsTr("7")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 8
                    font.styleName: "Regular"
                    font.family: "Proxima Nova"
                }

                Label {
                    id: label9
                    width: 76
                    text: qsTr("8")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 8
                    font.styleName: "Regular"
                    font.family: "Proxima Nova"
                }

                Label {
                    id: label10
                    width: 76
                    text: qsTr("9")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 8
                    font.styleName: "Regular"
                    font.family: "Proxima Nova"
                }

                Label {
                    id: label11
                    width: 76
                    text: qsTr("10")
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 8
                    font.styleName: "Regular"
                    font.family: "Proxima Nova"
                }
            }

            Label {
                id: label12
                height: 20
                text: qsTr("Ток коррекции (А)")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: row.bottom
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 8
                font.family: "Proxima Nova"
                anchors.topMargin: 0
                anchors.rightMargin: 8
                anchors.leftMargin: 8
            }

            Row {
                id: row1
                height: 30
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: label12.bottom
                spacing: 4
                anchors.topMargin: 0
                anchors.rightMargin: 8
                anchors.leftMargin: 8

                TextField {
                    id: textField
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    font.family: "Proxima Nova"
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly

                    onActiveFocusChanged: intKeyboard.visible = true
                    //                                        enterKeyAction: EnterKeyAction.Next
                    onAccepted: textArea.focus = true
                    //                                        onActiveFocusChanged: {
                    //                                            console.log("textField")
                    //                                            integerDialog.open()
                    //                                        }
                    onEditingFinished: {
                        intKeyboard.visible = true
                    }
                }

                TextField {
                    id: textField1
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    font.family: "Proxima Nova"
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    //                    enterKeyAction: EnterKeyAction.Next
                    onAccepted: textArea.focus = true
                    //                    onActiveFocusChanged: {
                    //                        console.log("textField")
                    //                        integerDialog.open()
                    //                    }
                    //                    onEditingFinished: {
                    //                        console.log("textField")
                    //                        integerDialog.close()
                    //                    }
                }

                TextField {
                    id: textField2
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    font.family: "Proxima Nova"
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly
                    //                    enterKeyAction: EnterKeyAction.Next
                    onAccepted: textArea.focus = true
                    //                    onActiveFocusChanged: {
                    //                        console.log("textField")
                    //                        integerDialog.open()
                    //                    }
                    //                    onEditingFinished: {
                    //                        console.log("textField")
                    //                        integerDialog.close()
                    //                    }
                }

                TextField {
                    id: textField3
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    font.family: "Proxima Nova"
                    placeholderText: qsTr("0")
                }

                TextField {
                    id: textField4
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    font.family: "Proxima Nova"
                    placeholderText: qsTr("0")
                }

                TextField {
                    id: textField5
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    font.family: "Proxima Nova"
                    placeholderText: qsTr("0")
                }

                TextField {
                    id: textField6
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    font.family: "Proxima Nova"
                    placeholderText: qsTr("0")
                }

                TextField {
                    id: textField7
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    font.family: "Proxima Nova"
                    placeholderText: qsTr("0")
                }

                TextField {
                    id: textField8
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    font.family: "Proxima Nova"
                    placeholderText: qsTr("0")
                }

                TextField {
                    id: textField9
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    font.family: "Proxima Nova"
                    placeholderText: qsTr("0")
                }
            }

            Label {
                id: label13
                height: 20
                text: qsTr("Ток останова (А)")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: row1.bottom
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 8
                anchors.rightMargin: 8
                anchors.leftMargin: 8
                anchors.topMargin: 0
                font.styleName: "Regular"
                font.family: "Proxima Nova"
            }

            Row {
                id: row2
                height: 30
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: label13.bottom
                anchors.rightMargin: 8
                spacing: 4

                TextField {
                    id: textField10
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField11
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField12
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField13
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField14
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField15
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField16
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField17
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField18
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField19
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }
                anchors.topMargin: 0
                anchors.leftMargin: 8
            }

            Label {
                id: label14
                height: 20
                text: qsTr("Ток реверса (А)")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: row2.bottom
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.styleName: "Regular"
                font.family: "Proxima Nova"
                font.pointSize: 8
                anchors.rightMargin: 8
                anchors.leftMargin: 8
                anchors.topMargin: 0
            }

            Row {
                id: row3
                height: 30
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: label14.bottom
                anchors.rightMargin: 8
                spacing: 4
                TextField {
                    id: textField20
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField21
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField22
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField23
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField24
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField25
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField26
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField27
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField28
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField29
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }
                anchors.topMargin: 0
                anchors.leftMargin: 8
            }

            Label {
                id: label15
                height: 20
                text: qsTr("Ток К.З. (А)")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: row3.bottom
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.styleName: "Regular"
                font.family: "Proxima Nova"
                font.pointSize: 8
                anchors.topMargin: 0
                anchors.rightMargin: 8
                anchors.leftMargin: 8
            }

            Row {
                id: row4
                height: 30
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: label15.bottom
                anchors.rightMargin: 8
                spacing: 4

                TextField {
                    id: textField30
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField31
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField32
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField33
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField34
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField35
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField36
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField37
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField38
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: textField39
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }
                anchors.topMargin: 0
                anchors.leftMargin: 8
            }
        }

        Rectangle {
            property bool running: false

            id: bottomRect
            y: 264
            height: 220
            color: "#aebfcd"
            //        anchors.left: parent.left
            //        anchors.right: parent.right
            //        anchors.bottom: parent.bottom
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.bottomMargin: 0

            NumberAnimation on y {
                to: 600
                duration: 400
                running: bottomRect.running
            }
            NumberAnimation on y {
                from: 600
                to: 264
                duration: 400
                running: !bottomRect.running
            }

            Image {
                id: image
                x: 0
                y: 0
                width: 800
                height: 220
                source: "content/220-footer.png"
                fillMode: Image.PreserveAspectFit

                //                SilverBtn {
                //                    id: btnHome1
                //                    x: 643
                //                    y: 432
                //                    width: 149
                //                    height: 40
                //                    text: qsTr("Выход")
                //                    anchors.bottom: btnHome1.top
                //                    font.capitalization: Font.AllUppercase
                //                    font.family: "Proxima Nova"
                //                    font.bold: true
                //                    font.styleName: "Regular"
                //                    anchors.bottomMargin: 21
                //                    font.pointSize: 12
                //                    onClicked: {
                //                        bottomRect.running = !bottomRect.running
                //                        stackView.push(Qt.resolvedUrl("index.qml"))
                //                    }
                //                }
                Button {
                    id: button
                    x: 536
                    y: 180
                    width: 100
                    height: 32
                    text: qsTr("Клавиатура")
                    onClicked: {
                        intKeyboard.x = 210
                        intKeyboard.y = 100
                        intKeyboard.running = !intKeyboard.running
                        intKeyboard.visible = !intKeyboard.visible
                    }
                }

                SilverBtn {
                    id: silverBtn
                    x: 642
                    y: 172
                    width: 150
                    height: 40
                    text: qsTr("Выход")
                    font.capitalization: Font.AllUppercase
                    font.family: "Proxima Nova"
                    font.bold: true
                    font.styleName: "Regular"
                    onClicked: {
                        bottomRect.running = !bottomRect.running
                        stackView.push(Qt.resolvedUrl("index.qml"))
                    }
                }
            }
        }

        Rectangle {
            property bool running: false

            id: intKeyboard
            x: 210
            y: 100
            width: 315
            height: 312
            color: "#143656"
            visible: false

            DragHandler {
                onActiveChanged: if (active) {
                                     intKeyboard.startSystemMove()
                                 }
            }

            //            PropertyAnimation {
            //                property: "opacity"
            //                from: 0
            //                to: 1
            //                duration: 200
            //                running: intKeyboard.running
            //            }
            Transition {
                PropertyAnimation {
                    property: "opacity"
                    from: 1
                    to: 0
                    duration: 400
                    running: intKeyboard.running
                }
            }

            //            PropertyAnimation on y {
            //                property: "opacity"
            //                to: 1.0
            //                duration: 800
            //                running: intKeyboard.running
            //            }
            KeyboardBtn {
                id: rectangle4
                x: 8
                y: 236
                width: 146
                height: 70
                keyname: "0"
            }

            KeyboardBtn {
                id: rectangle5
                x: 8
                y: 160
                width: 70
                height: 70
                keyname: "1"
            }

            KeyboardBtn {
                id: rectangle6
                x: 161
                y: 236
                width: 70
                height: 70
                keyname: "."
            }

            KeyboardBtn {
                id: rectangle7
                x: 237
                y: 160
                width: 70
                height: 146
                keyname: "Enter"
            }

            KeyboardBtn {
                id: rectangle8
                x: 8
                y: 84
                width: 70
                height: 70
                keyname: "4"
            }

            KeyboardBtn {
                id: rectangle9
                x: 8
                y: 8
                width: 70
                height: 70
                keyname: "7"
            }

            KeyboardBtn {
                id: rectangle10
                x: 84
                y: 160
                width: 70
                height: 70
                keyname: "2"
            }

            KeyboardBtn {
                id: rectangle11
                x: 84
                y: 84
                width: 70
                height: 70
                keyname: "5"
            }

            KeyboardBtn {
                id: rectangle12
                x: 161
                y: 160
                width: 70
                height: 70
                keyname: "3"
            }

            KeyboardBtn {
                id: rectangle13
                x: 161
                y: 84
                width: 70
                height: 70
                keyname: "6"
            }

            KeyboardBtn {
                id: rectangle14
                x: 84
                y: 8
                width: 70
                height: 70
                keyname: "8"
            }

            KeyboardBtn {
                id: rectangle15
                x: 161
                y: 8
                width: 70
                height: 70
                keyname: "9"
            }

            KeyboardBtn {
                id: rectangle16
                x: 237
                y: 84
                width: 70
                height: 70
                keyname: "Exit"
            }

            KeyboardBtn {
                id: rectangle17
                x: 237
                y: 8
                width: 70
                height: 70
                keyname: "<"
            }
        }
    }
}
