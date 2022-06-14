import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

import "./content"
import "../controls"
import "../controls/intBtn"

Item {
    property var corrector: [{
            "id": "textField.text",
            "sections": [{
                    "c_0": sec0c0.text,
                    "c_1": sec0c1.text,
                    "c_2": sec0c2.text,
                    "c_3": sec0c3.text,
                    "section": 0
                }, {
                    "c_0": sec1c0.text,
                    "c_1": sec1c1.text,
                    "c_2": sec1c2.text,
                    "c_3": sec1c3.text,
                    "section": 1
                }, {
                    "c_0": sec2c0.text,
                    "c_1": sec2c1.text,
                    "c_2": sec2c2.text,
                    "c_3": sec2c3.text,
                    "section": 2
                }, {
                    "c_1": sec3c1.text,
                    "c_2": sec3c2.text,
                    "c_3": sec3c3.text,
                    "c_0": sec3c0.text,
                    "section": 3
                }, {
                    "c_0": sec4c0.text,
                    "c_1": sec4c1.text,
                    "c_2": sec4c2.text,
                    "c_3": sec4c3.text,
                    "section": 4
                }, {
                    "c_0": sec5c0.text,
                    "c_1": sec5c1.text,
                    "c_2": sec5c2.text,
                    "c_3": sec5c3.text,
                    "section": 5
                }, {
                    "c_0": sec6c0.text,
                    "c_1": sec6c1.text,
                    "c_2": sec6c2.text,
                    "c_3": sec6c3.text,
                    "section": 6
                }, {
                    "c_0": sec7c0.text,
                    "c_1": sec7c1.text,
                    "c_2": sec7c2.text,
                    "c_3": sec7c3.text,
                    "section": 7
                }, {
                    "c_0": sec8c0.text,
                    "c_1": sec8c1.text,
                    "c_2": sec8c2.text,
                    "c_3": sec8c3.text,
                    "section": 8
                }, {
                    "c_0": sec9c0.text,
                    "c_1": sec9c1.text,
                    "c_2": sec9c2.text,
                    "c_3": sec9c3.text,
                    "section": 9
                }]
        }]

    property var idMap: ({
                             "sec0c0": sec0c0,
                             "sec0c1": sec0c1,
                             "sec0c2": sec0c2,
                             "sec0c3": sec0c3,
                             "sec1c0": sec1c0,
                             "sec1c1": sec1c1,
                             "sec1c2": sec1c2,
                             "sec1c3": sec1c3,
                             "sec2c0": sec2c0,
                             "sec2c1": sec2c1,
                             "sec2c2": sec2c2,
                             "sec2c3": sec2c3,
                             "sec3c0": sec3c0,
                             "sec3c1": sec3c1,
                             "sec3c2": sec3c2,
                             "sec3c3": sec3c3,
                             "sec4c0": sec4c0,
                             "sec4c1": sec4c1,
                             "sec4c2": sec4c2,
                             "sec4c3": sec4c3,
                             "sec5c0": sec5c0,
                             "sec5c1": sec5c1,
                             "sec5c2": sec5c2,
                             "sec5c3": sec5c3,
                             "sec6c0": sec6c0,
                             "sec6c1": sec6c1,
                             "sec6c2": sec6c2,
                             "sec6c3": sec6c3,
                             "sec7c0": sec7c0,
                             "sec7c1": sec7c1,
                             "sec7c2": sec7c2,
                             "sec7c3": sec7c3,
                             "sec8c0": sec8c0,
                             "sec8c1": sec8c1,
                             "sec8c2": sec8c2,
                             "sec8c3": sec8c3,
                             "sec9c0": sec9c0,
                             "sec9c1": sec9c1,
                             "sec9c2": sec9c2,
                             "sec9c3": sec9c3
                         })

    function findItemById(id) {
        return idMap[id]
    }

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

        //        //        IntDialog {
        //        //            id: integerDialog
        //        //            anchors.centerIn: parent
        //        //        }
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
                    text: qsTr("Номер участка")
                    anchors.right: parent.right
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 8
                    font.styleName: "Regular"
                    font.family: "Proxima Nova"
                    anchors.rightMargin: 8
                }

                Row {
                    id: row
                    height: 27
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.rightMargin: 8
                    anchors.leftMargin: 8
                    anchors.topMargin: 0
                    spacing: 3

                    Label {
                        id: label2
                        width: 76
                        height: 27
                        color: "#ffffff"
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
                        height: 27
                        color: "#ffffff"
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
                        height: 27
                        color: "#ffffff"
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
                        height: 27
                        color: "#ffffff"
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
                        height: 27
                        color: "#ffffff"
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
                        height: 27
                        color: "#ffffff"
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
                        height: 27
                        color: "#ffffff"
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
                        height: 27
                        color: "#ffffff"
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
                        height: 27
                        color: "#ffffff"
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
                        height: 27
                        color: "#ffffff"
                        text: qsTr("10")
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.pointSize: 8
                        font.styleName: "Regular"
                        font.family: "Proxima Nova"
                    }
                }
            }
        }

        Rectangle {
            id: rectangle2
            color: "#aebfcd"
            anchors.left: parent.left
            anchors.right: parent.right
            //            anchors.bottom: bottomRect.top
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.bottomMargin: 0

            Label {
                id: label12
                y: 42
                height: 20
                text: qsTr("Ток коррекции (А)")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: row.bottom
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 8
                font.family: "Proxima Nova"
                anchors.topMargin: 6
                anchors.rightMargin: 8
                anchors.leftMargin: 8
            }

            Row {
                id: row1
                y: 68
                height: 30
                anchors.left: parent.left
                anchors.right: parent.right
                spacing: 4
                anchors.rightMargin: 8
                anchors.leftMargin: 8

                TextField {
                    id: sec0c0
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    font.family: "Proxima Nova"
                    placeholderText: qsTr("0")
                    inputMethodHints: Qt.ImhDigitsOnly

                    //                    onActiveFocusChanged: intKeyboard.visible = true
                    //                                        enterKeyAction: EnterKeyAction.Next
                    onAccepted: textArea.focus = true
                    //                                        onActiveFocusChanged: {
                    //                                            console.log("textField")
                    //                                            integerDialog.open()
                    //                                        }
                    //                    onEditingFinished: {
                    //                        intKeyboard.visible = true
                    //                    }
                }

                TextField {
                    id: sec1c0
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
                    id: sec2c0
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
                    id: sec3c0
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    font.family: "Proxima Nova"
                    placeholderText: qsTr("0")
                }

                TextField {
                    id: sec4c0
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    font.family: "Proxima Nova"
                    placeholderText: qsTr("0")
                }

                TextField {
                    id: sec5c0
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    font.family: "Proxima Nova"
                    placeholderText: qsTr("0")
                }

                TextField {
                    id: sec6c0
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    font.family: "Proxima Nova"
                    placeholderText: qsTr("0")
                }

                TextField {
                    id: sec7c0
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    font.family: "Proxima Nova"
                    placeholderText: qsTr("0")
                }

                TextField {
                    id: sec8c0
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    font.family: "Proxima Nova"
                    placeholderText: qsTr("0")
                }

                TextField {
                    id: sec9c0
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    font.family: "Proxima Nova"
                    placeholderText: qsTr("0")
                }
            }

            Label {
                id: label13
                y: 104
                height: 20
                text: qsTr("Ток останова (А)")
                anchors.left: parent.left
                anchors.right: parent.right
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 8
                anchors.rightMargin: 8
                anchors.leftMargin: 8
                font.styleName: "Regular"
                font.family: "Proxima Nova"
            }

            Row {
                id: row2
                y: 130
                height: 30
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.rightMargin: 8
                spacing: 4

                TextField {
                    id: sec0c1
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec1c1
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec2c1
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec3c1
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec4c1
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec5c1
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec6c1
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec7c1
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec8c1
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec9c1
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }
                anchors.leftMargin: 8
            }

            Label {
                id: label14
                y: 171
                height: 20
                text: qsTr("Ток реверса (А)")
                anchors.left: parent.left
                anchors.right: parent.right
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.styleName: "Regular"
                font.family: "Proxima Nova"
                font.pointSize: 8
                anchors.rightMargin: 8
                anchors.leftMargin: 8
            }

            Row {
                id: row3
                y: 197
                height: 30
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.rightMargin: 8
                spacing: 4

                TextField {
                    id: sec0c2
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec1c2
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec2c2
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec3c2
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec4c2
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec5c2
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec6c2
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec7c2
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec8c2
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec9c2
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }
                anchors.leftMargin: 8
            }

            Label {
                id: label15
                y: 240
                height: 20
                text: qsTr("Ток К.З. (А)")
                anchors.left: parent.left
                anchors.right: parent.right
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.styleName: "Regular"
                font.family: "Proxima Nova"
                font.pointSize: 8
                anchors.rightMargin: 8
                anchors.leftMargin: 8
            }

            Row {
                id: row4
                y: 266
                height: 30
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.rightMargin: 8
                spacing: 4

                TextField {
                    id: sec0c3
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec1c3
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec2c3
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec3c3
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec4c3
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec5c3
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec6c3
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec7c3
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec8c3
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec9c3
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }
                anchors.leftMargin: 8
            }
        }

        Rectangle {
            property bool running: false
            x: 0

            id: bottomRect
            y: 305
            height: 175
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
                to: 305
                duration: 400
                running: !bottomRect.running
            }

            Image {
                id: image
                x: 0
                y: 0
                width: 800
                height: 175
                source: "content/175-footer.png"
                fillMode: Image.PreserveAspectFit

                SilverBtn {
                    id: button
                    x: 474
                    y: 127
                    width: 162
                    height: 40
                    text: qsTr("Клавиатура")
                    font.bold: true
                    font.capitalization: Font.AllUppercase
                    font.styleName: "Regular"
                    font.family: "Proxima Nova"
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
                    y: 127
                    width: 150
                    height: 40
                    text: qsTr("Назад")
                    font.capitalization: Font.AllUppercase
                    font.family: "Proxima Nova"
                    font.bold: true
                    font.styleName: "Regular"
                    onClicked: {
                        handler.create_corrector_data(root.corrector)
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
                    text: qsTr("Параметры корректора")
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
    Component.onCompleted: handler.return_corrector_data()

    Connections {
        target: handler

        function onCorrectorData(retData) {
            let sec = ""
            let count = 0
            for (sec in root.idMap) {
                findItemById(sec).text = retData[count]
                count++
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;height:480;width:800}
}
##^##*/

