import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

import "./content"
import "../controls"
import "../controls/intBtn"

Item {
    property var reflow: [{
            "min_diameter": minDiameter.text,
            "max_diameter": maxDiameter.text,
            "sections": [{
                    "r_0": sec0r0.text,
                    "r_1": sec0r1.text,
                    "r_2": sec0r2.text,
                    "r_3": sec0r3.text,
                    "section": 0
                }, {
                    "r_0": sec1r0.text,
                    "r_1": sec1r1.text,
                    "r_2": sec1r2.text,
                    "r_3": sec1r3.text,
                    "section": 1
                }, {
                    "r_0": sec2r0.text,
                    "r_1": sec2r1.text,
                    "r_2": sec2r2.text,
                    "r_3": sec2r3.text,
                    "section": 2
                }, {
                    "r_1": sec3r1.text,
                    "r_2": sec3r2.text,
                    "r_3": sec3r3.text,
                    "r_0": sec3r0.text,
                    "section": 3
                }, {
                    "r_0": sec4r0.text,
                    "r_1": sec4r1.text,
                    "r_2": sec4r2.text,
                    "r_3": sec4r3.text,
                    "section": 4
                }, {
                    "r_0": sec5r0.text,
                    "r_1": sec5r1.text,
                    "r_2": sec5r2.text,
                    "r_3": sec5r3.text,
                    "section": 5
                }, {
                    "r_0": sec6r0.text,
                    "r_1": sec6r1.text,
                    "r_2": sec6r2.text,
                    "r_3": sec6r3.text,
                    "section": 6
                }, {
                    "r_0": sec7r0.text,
                    "r_1": sec7r1.text,
                    "r_2": sec7r2.text,
                    "r_3": sec7r3.text,
                    "section": 7
                }, {
                    "r_0": sec8r0.text,
                    "r_1": sec8r1.text,
                    "r_2": sec8r2.text,
                    "r_3": sec8r3.text,
                    "section": 8
                }, {
                    "r_0": sec9r0.text,
                    "r_1": sec9r1.text,
                    "r_2": sec9r2.text,
                    "r_3": sec9r3.text,
                    "section": 9
                }]
        }]

    property var idMap: ({
                             "sec0r0": sec0r0,
                             "sec0r1": sec0r1,
                             "sec0r2": sec0r2,
                             "sec0r3": sec0r3,
                             "sec1r0": sec1r0,
                             "sec1r1": sec1r1,
                             "sec1r2": sec1r2,
                             "sec1r3": sec1r3,
                             "sec2r0": sec2r0,
                             "sec2r1": sec2r1,
                             "sec2r2": sec2r2,
                             "sec2r3": sec2r3,
                             "sec3r0": sec3r0,
                             "sec3r1": sec3r1,
                             "sec3r2": sec3r2,
                             "sec3r3": sec3r3,
                             "sec4r0": sec4r0,
                             "sec4r1": sec4r1,
                             "sec4r2": sec4r2,
                             "sec4r3": sec4r3,
                             "sec5r0": sec5r0,
                             "sec5r1": sec5r1,
                             "sec5r2": sec5r2,
                             "sec5r3": sec5r3,
                             "sec6r0": sec6r0,
                             "sec6r1": sec6r1,
                             "sec6r2": sec6r2,
                             "sec6r3": sec6r3,
                             "sec7r0": sec7r0,
                             "sec7r1": sec7r1,
                             "sec7r2": sec7r2,
                             "sec7r3": sec7r3,
                             "sec8r0": sec8r0,
                             "sec8r1": sec8r1,
                             "sec8r2": sec8r2,
                             "sec8r3": sec8r3,
                             "sec9r0": sec9r0,
                             "sec9r1": sec9r1,
                             "sec9r2": sec9r2,
                             "sec9r3": sec9r3
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
                    id: sec0r0
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
                    id: sec1r0
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
                    id: sec2r0
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
                    id: sec3r0
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    font.family: "Proxima Nova"
                    placeholderText: qsTr("0")
                }

                TextField {
                    id: sec4r0
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    font.family: "Proxima Nova"
                    placeholderText: qsTr("0")
                }

                TextField {
                    id: sec5r0
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    font.family: "Proxima Nova"
                    placeholderText: qsTr("0")
                }

                TextField {
                    id: sec6r0
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    font.family: "Proxima Nova"
                    placeholderText: qsTr("0")
                }

                TextField {
                    id: sec7r0
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    font.family: "Proxima Nova"
                    placeholderText: qsTr("0")
                }

                TextField {
                    id: sec8r0
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    font.family: "Proxima Nova"
                    placeholderText: qsTr("0")
                }

                TextField {
                    id: sec9r0
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
                    id: sec0r1
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec1r1
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec2r1
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec3r1
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec4r1
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec5r1
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec6r1
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec7r1
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec8r1
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec9r1
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
                    id: sec0r2
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec1r2
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec2r2
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec3r2
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec4r2
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec5r2
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec6r2
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec7r2
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec8r2
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec9r2
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
                    id: sec0r3
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec1r3
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec2r3
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec3r3
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec4r3
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec5r3
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec6r3
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec7r3
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec8r3
                    width: 75
                    height: 28
                    horizontalAlignment: Text.AlignHCenter
                    placeholderText: qsTr("0")
                    font.family: "Proxima Nova"
                }

                TextField {
                    id: sec9r3
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
                x: 321
                y: 302
                width: 233
                height: 28
                horizontalAlignment: Text.AlignHCenter
                placeholderText: qsTr("Мин диаметр, мм")
                font.family: "Proxima Nova"
            }

            TextField {
                id: maxDiameter
                x: 560
                y: 302
                width: 232
                height: 28
                horizontalAlignment: Text.AlignHCenter
                placeholderText: qsTr("Макс диаметр, мм")
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
                    x: 4
                    y: 35
                    width: 150
                    height: 40
                    text: "Корректор"
                    font.bold: true
                    font.capitalization: Font.AllUppercase
                    font.styleName: "Regular"
                    font.family: "Proxima Nova"
                    onClicked: {
                        handler.create_reflow_data(root.reflow)
                        stackView.push(Qt.resolvedUrl("conf-1.qml"))
                    }
                }

                SilverBtn {
                    id: silverBtn2
                    x: 4
                    y: 81
                    width: 235
                    height: 40
                    text: qsTr("Подогрев/Выжигание")
                    font.bold: true
                    font.capitalization: Font.AllUppercase
                    font.styleName: "Regular"
                    font.family: "Proxima Nova"
                    onClicked: {
                        handler.create_reflow_data(root.reflow)
                        stackView.push(Qt.resolvedUrl("conf-3.qml"))
                    }
                }

                SilverBtn {
                    id: silverBtn3
                    x: 4
                    y: 127
                    width: 268
                    height: 40
                    text: qsTr("Параметры цикла сварки")
                    font.bold: true
                    font.capitalization: Font.AllUppercase
                    font.styleName: "Regular"
                    font.family: "Proxima Nova"
                    onClicked: {
                        handler.create_reflow_data(root.reflow)
                        stackView.push(Qt.resolvedUrl("conf-2.qml"))
                    }
                }

                SilverBtn {
                    id: silverBtn5
                    x: 590
                    y: 62
                    width: 202
                    height: 40
                    text: qsTr("Создать")
                    font.bold: true
                    font.capitalization: Font.AllUppercase
                    font.styleName: "Regular"
                    font.family: "Proxima Nova"
                    onClicked: {
                        handler.create_welding_programm()
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
    Component.onCompleted: handler.return_reflow_data()

    Connections {
        target: handler

        function onDiametersData(diameters) {
            minDiameter.text = diameters[0]["min_diameter"]
            maxDiameter.text = diameters[0]["max_diameter"]
        }

        function onReflowData(retData) {
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

