import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

import "./content"
import "../controls"
import "../controls/intBtn"

Item {
    property var reflow: [{
            "id": "textField.text",
            "sections": [{
                    "r_1": sec0s.text,
                    "r_2": sec0fs.text,
                    "r_3": sec0bs.text,
                    "r_0": sec0u.text,
                    "section": 0
                }, {
                    "r_1": sec1s.text,
                    "r_2": sec1fs.text,
                    "r_3": sec1bs.text,
                    "r_0": sec1u.text,
                    "section": 1
                }, {
                    "r_1": sec2s.text,
                    "r_2": sec2fs.text,
                    "r_3": sec2bs.text,
                    "r_0": sec2u.text,
                    "section": 2
                }, {
                    "r_1": sec3s.text,
                    "r_2": sec3fs.text,
                    "r_3": sec3bs.text,
                    "r_0": sec3u.text,
                    "section": 3
                }, {
                    "r_1": sec4s.text,
                    "r_2": sec4fs.text,
                    "r_3": sec4bs.text,
                    "r_0": sec4u.text,
                    "section": 4
                }, {
                    "r_1": sec5s.text,
                    "r_2": sec5fs.text,
                    "r_3": sec5bs.text,
                    "r_0": sec5u.text,
                    "section": 5
                }, {
                    "r_1": sec6s.text,
                    "r_2": sec6fs.text,
                    "r_3": sec6bs.text,
                    "r_0": sec6u.text,
                    "section": 6
                }, {
                    "r_1": sec7s.text,
                    "r_2": sec7fs.text,
                    "r_3": sec7bs.text,
                    "r_0": sec7u.text,
                    "section": 7
                }, {
                    "r_1": sec8s.text,
                    "r_2": sec8fs.text,
                    "r_3": sec8bs.text,
                    "r_0": sec8u.text,
                    "section": 8
                }, {
                    "r_1": sec9s.text,
                    "r_2": sec9fs.text,
                    "r_3": sec9bs.text,
                    "r_0": sec9u.text,
                    "section": 9
                }]
        }]

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
                text: "S, мм"
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
                    id: sec0s
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
                    id: sec1s
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
                    id: sec2s
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
                    id: sec3s
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    font.family: "Proxima Nova"
                    placeholderText: qsTr("0")
                }

                TextField {
                    id: sec4s
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    font.family: "Proxima Nova"
                    placeholderText: qsTr("0")
                }

                TextField {
                    id: sec5s
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    font.family: "Proxima Nova"
                    placeholderText: qsTr("0")
                }

                TextField {
                    id: sec6s
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    font.family: "Proxima Nova"
                    placeholderText: qsTr("0")
                }

                TextField {
                    id: sec7s
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    font.family: "Proxima Nova"
                    placeholderText: qsTr("0")
                }

                TextField {
                    id: sec8s
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    font.family: "Proxima Nova"
                    placeholderText: qsTr("0")
                }

                TextField {
                    id: sec9s
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
                text: qsTr("Скорость вперёд, мм/с")
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
                    id: sec0fs
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec1fs
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec2fs
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec3fs
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec4fs
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec5fs
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec6fs
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec7fs
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec8fs
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec9fs
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
                text: qsTr("Скорость назад, мм/с")
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
                    id: sec0bs
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec1bs
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec2bs
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec3bs
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec4bs
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec5bs
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec6bs
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec7bs
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec8bs
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec9bs
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
                text: qsTr("U, %")
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
                    id: sec0u
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec1u
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec2u
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec3u
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec4u
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec5u
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec6u
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec7u
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec8u
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec9u
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }
                anchors.leftMargin: 8
            }

            TextField {
                id: minDiameter
                x: 306
                y: 302
                width: 240
                height: 28
                horizontalAlignment: Text.AlignHCenter
                placeholderText: qsTr("Минимальный диаметр, мм")
                font.family: "Proxima Nova"
            }

            TextField {
                id: maxDiameter
                x: 552
                y: 302
                width: 240
                height: 28
                horizontalAlignment: Text.AlignHCenter
                placeholderText: qsTr("Максимальны диаметр, мм")
                font.family: "Proxima Nova"
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
                        bottomRect.running = !bottomRect.running
                        stackView.push(Qt.resolvedUrl("conf.qml"))
                    }
                }

                Label {
                    id: label
                    x: -109
                    y: 0
                    width: 260
                    height: 27
                    color: "#ffffff"
                    text: qsTr("Параметры оплавления")
                    anchors.left: parent.left
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    anchors.leftMargin: 8
                    font.styleName: "Regular"
                    font.family: "Proxima Nova"
                }

                SilverBtn {
                    id: silverBtn1
                    x: 234
                    y: 117
                    width: 150
                    height: 40
                    text: "Корректор"
                    font.bold: true
                    font.capitalization: Font.AllUppercase
                    font.styleName: "Regular"
                    font.family: "Proxima Nova"
                    onClicked: {
                        stackView.push(Qt.resolvedUrl("conf-1.qml"))
                    }
                }

                SilverBtn {
                    id: silverBtn2
                    x: 8
                    y: 47
                    width: 235
                    height: 40
                    text: qsTr("Подогрев/Выжигание")
                    font.bold: true
                    font.capitalization: Font.AllUppercase
                    font.styleName: "Regular"
                    font.family: "Proxima Nova"
                    onClicked: {
                        stackView.push(Qt.resolvedUrl("conf-3.qml"))
                    }
                }

                SilverBtn {
                    id: silverBtn3
                    x: 266
                    y: 47
                    width: 268
                    height: 40
                    text: qsTr("Параметры цикла сварки")
                    font.bold: true
                    font.capitalization: Font.AllUppercase
                    font.styleName: "Regular"
                    font.family: "Proxima Nova"
                    onClicked: {
                        stackView.push(Qt.resolvedUrl("conf-2.qml"))
                    }
                }

                //                SilverBtn {
                //                    id: silverBtn4
                //                    x: 8
                //                    y: 108
                //                    width: 183
                //                    height: 40
                //                    text: qsTr("Загрузить")
                //                    font.bold: true
                //                    font.capitalization: Font.AllUppercase
                //                    font.styleName: "Regular"
                //                    font.family: "Proxima Nova"
                //                }
                SilverBtn {
                    id: silverBtn5
                    x: 8
                    y: 117
                    width: 202
                    height: 40
                    text: qsTr("Сохранить")
                    font.bold: true
                    font.capitalization: Font.AllUppercase
                    font.styleName: "Regular"
                    font.family: "Proxima Nova"
                    onClicked: {
                        console.log(root.reflow)
                        handler.input_reflow_data(root.reflow)
                    }
                }

                SilverBtn {
                    id: silverBtn6
                    x: 486
                    y: 127
                    width: 150
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
    Component.onCompleted: handler.create_welding_programm()

    //    Connections {
    //        target: handler

    //        function onWeldingProgramms(wb) {
    //            listProgramms1.append(wb)
    //        }
    //    }
}

/*##^##
Designer {
    D{i:0;height:480;width:800}D{i:65}D{i:66}
}
##^##*/

