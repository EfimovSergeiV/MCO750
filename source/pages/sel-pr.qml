import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

import "./content"
import "../controls"
import "../controls/intBtn"

Item {
    id: root
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

        Rectangle {
            id: rectangle2
            color: "#aebfcd"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.bottomMargin: 0

            ScrollView {
                id: scrollView
                x: 0
                y: 62
                width: 800
                height: 316
                ScrollBar.horizontal.interactive: false
                ScrollBar.vertical.interactive: true

                ListView {
                    id: showWeldingProgramm
                    x: 0
                    y: 0
                    width: 800
                    height: 480
                    focus: true
                    model: ListModel {
                        id: listProgramms
                    }

                    //                    model: ListModel {
                    //                        ListElement {
                    //                            name: "Name 1"
                    //                        }
                    //                        ListElement {
                    //                            name: "Name 2"
                    //                        }
                    //                        ListElement {
                    //                            name: "Name 3"
                    //                        }
                    //                        ListElement {
                    //                            name: "Name 4"
                    //                        }
                    //                        ListElement {
                    //                            name: "Name 5"
                    //                        }
                    //                        ListElement {
                    //                            name: "Name 5"
                    //                        }
                    //                        ListElement {
                    //                            name: "Name 5"
                    //                        }
                    //                        ListElement {
                    //                            name: "Name 5"
                    //                        }
                    //                        ListElement {
                    //                            name: "Name 5"
                    //                        }
                    //                        ListElement {
                    //                            name: "Name 5"
                    //                        }
                    //                        ListElement {
                    //                            name: "Name 5"
                    //                        }
                    //                        ListElement {
                    //                            name: "Name 5"
                    //                        }
                    //                        ListElement {
                    //                            name: "Name 5"
                    //                        }
                    //                    }
                    delegate: Row {
                        id: row
                        x: 0
                        y: 0
                        width: 800
                        height: 60
                        padding: 10

                        TextField {
                            id: textField
                            width: 120
                            height: 40
                            padding: 10
                            placeholderText: qsTr("Text Field")
                        }

                        Label {
                            id: label2
                            width: 280
                            height: 40
                            padding: 10
                            text: name
                        }

                        TextField {
                            id: textField1
                            width: 120
                            height: 40
                            padding: 10
                            placeholderText: qsTr("Text Field")
                        }

                        Label {
                            id: label3
                            width: 280
                            height: 40
                            padding: 10
                            text: qsTr("Label")
                        }
                    }
                }
            }
        }

        Rectangle {
            id: rectangle1
            height: 60
            color: "#00143656"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.leftMargin: 0

            NumberAnimation on y {
                to: -200
                duration: 400
                running: bottomRect.running
            }
            NumberAnimation on y {
                from: -200
                to: 0
                duration: 400
                running: !bottomRect.running
            }

            Image {
                id: image1
                x: 0
                y: 0
                width: 800
                height: 60
                source: "content/header-60.png"
                fillMode: Image.PreserveAspectFit

                Label {
                    id: label1
                    x: 521
                    y: 33
                    width: 271
                    height: 27
                    color: "#ffffff"
                    text: "Допустимый диаметр"
                    anchors.right: parent.right
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 11
                    font.styleName: "Regular"
                    font.family: "Proxima Nova"
                    anchors.rightMargin: 8
                }
            }
        }

        Rectangle {
            property bool running: false
            x: 0

            id: bottomRect
            y: 380
            height: 100
            width: 800
            color: "#00ffffff"
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
                to: 380
                duration: 400
                running: !bottomRect.running
            }

            Image {
                id: image
                x: 0
                y: 0
                width: 800
                height: 100
                source: "content/100-footer.png"
                fillMode: Image.PreserveAspectFit

                Button {
                    id: button
                    x: 515
                    y: 52
                    width: 113
                    height: 40
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
                    y: 52
                    width: 150
                    height: 40
                    text: qsTr("Выход")
                    font.capitalization: Font.AllUppercase
                    font.family: "Proxima Nova"
                    font.bold: true
                    font.styleName: "Regular"
                    onClicked: {
                        bottomRect.running = !bottomRect.running
                        stackView.push(Qt.resolvedUrl("conf-0.qml"))
                    }
                }

                Label {
                    id: label
                    x: -109
                    y: 0
                    width: 260
                    height: 27
                    color: "#ffffff"
                    text: "Программа сварки"
                    anchors.left: parent.left
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    anchors.leftMargin: 8
                    font.styleName: "Regular"
                    font.family: "Proxima Nova"
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
    Component.onCompleted: handler.get_welding_programm()

    Connections {
        target: handler

        function onWeldingProgramms(wb) {
            listProgramms.append(wb)
        }
    }
}

/*##^##
Designer {
    D{i:0;height:480;width:800}
}
##^##*/

