import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.Extras 1.4
import "../sensors/clampControl"
import "../controls"

//import "../sensors/buttonIndicator"
Item {
    id: rootAction
    width: 800
    height: 480

    ClampControl {
        id: leftClampControl
        x: 254
        y: 126
        running: false
    }

    ClampControl {
        id: rightClampControl1
        x: 343
        y: 126
        running: false
    }

    Image {
        id: clampPlatform
        x: 254
        y: 230
        source: "content/clamp-platform.png"
    }

    Image {
        id: clampPlatform1
        x: 343
        y: 230
        source: "content/clamp-platform.png"
    }

    Image {
        id: leftPlatform
        x: 343
        y: 249
        source: "content/left-platform.png"
    }

    Image {
        id: rightPlatform
        x: 184
        y: 249
        source: "content/left-platform.png"
    }

    StatusIndicator {
        id: statusIndicator
        x: 310
        y: 260
        width: 27
        height: 28
    }

    StatusIndicator {
        id: statusIndicator1
        x: 425
        y: 126
    }

    StatusIndicator {
        id: statusIndicator2
        x: 425
        y: 170
    }

    StatusIndicator {
        id: statusIndicator3
        x: 184
        y: 126
    }

    StatusIndicator {
        id: statusIndicator4
        x: 184
        y: 170
    }

    StatusIndicator {
        id: statusIndicator5
        x: 8
        y: 8
    }

    StatusIndicator {
        id: statusIndicator6
        x: 8
        y: 52
    }

    StatusIndicator {
        id: statusIndicator7
        x: 772
        y: 8
        width: 20
        height: 20
    }

    StatusIndicator {
        id: statusIndicator8
        x: 772
        y: 34
        width: 20
        height: 20
    }

    StatusIndicator {
        id: statusIndicator9
        x: 772
        y: 61
        width: 20
        height: 20
    }

    StatusIndicator {
        id: statusIndicator10
        x: 772
        y: 87
        width: 20
        height: 20
    }

    StatusIndicator {
        id: statusIndicator11
        x: 772
        y: 113
        width: 20
        height: 20
    }

    StatusIndicator {
        id: statusIndicator12
        x: 772
        y: 139
        width: 20
        height: 20
    }

    StatusIndicator {
        id: statusIndicator13
        x: 772
        y: 179
        width: 20
        height: 20
    }

    ClampControl {
        id: leftClampControl1
        x: 128
        y: 170
        running: false
    }

    ClampControl {
        id: leftClampControl2
        x: 469
        y: 170
        running: false
    }

    StatusIndicator {
        id: statusIndicator14
        x: 525
        y: 212
    }

    StatusIndicator {
        id: statusIndicator15
        x: 525
        y: 250
    }

    StatusIndicator {
        id: statusIndicator16
        x: 84
        y: 250
    }

    StatusIndicator {
        id: statusIndicator17
        x: 84
        y: 212
    }

    StatusIndicator {
        id: statusIndicator18
        x: 519
        y: 40
        active: false
        color: "green"
        width: 50
        height: 50
    }

    StatusIndicator {
        id: statusIndicator19
        x: 343
        y: 295
    }

    Label {
        id: label
        x: 667
        y: 9
        width: 99
        height: 19
        text: "Насос вкл."
        font.bold: true
    }

    Label {
        id: label1
        x: 667
        y: 35
        width: 99
        height: 19
        text: "П/А режим"
        font.bold: true
    }

    Label {
        id: label2
        x: 667
        y: 62
        width: 99
        height: 19
        text: qsTr("Исходное")
        font.bold: true
    }

    Label {
        id: label3
        x: 667
        y: 88
        width: 99
        height: 19
        text: qsTr("Кожух")
        font.bold: true
    }

    Label {
        id: label4
        x: 667
        y: 114
        width: 99
        height: 19
        text: qsTr("Уровень")
        font.bold: true
    }

    Label {
        id: label5
        x: 667
        y: 140
        width: 99
        height: 19
        text: qsTr("Фильтр")
        font.bold: true
    }

    Label {
        id: label6
        x: 667
        y: 180
        width: 99
        height: 19
        text: qsTr("Перегрев ТК")
        font.bold: true
    }

    Label {
        id: label7
        x: 52
        y: 9
        width: 166
        height: 19
        text: qsTr("Выжигание/Подогрев")
        font.bold: true
    }

    Label {
        id: label8
        x: 52
        y: 27
        width: 166
        height: 19
        text: qsTr("Оплавление")
        horizontalAlignment: Text.AlignHCenter
        font.bold: true
    }

    Label {
        id: label9
        x: 52
        y: 62
        width: 166
        height: 19
        text: qsTr("Подогрев/Оплавление")
        font.bold: true
    }

    Label {
        id: label27
        x: 387
        y: 295
        width: 76
        height: 38
        text: qsTr("100.5")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.bold: true
    }

    Label {
        id: label28
        x: 469
        y: 295
        width: 133
        height: 39
        text: "Давление осадки"
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.bold: true
    }

    Label {
        id: label29
        x: 254
        y: 92
        width: 60
        height: 28
        text: qsTr("452.54")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.bold: true
    }

    Label {
        id: label30
        x: 320
        y: 92
        width: 151
        height: 28
        text: qsTr("Давление зажимов")
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.bold: true
    }

    Label {
        id: label31
        x: 450
        y: 8
        width: 187
        height: 20
        text: qsTr("Готовность")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.bold: true
    }

    Rectangle {
        property bool running: false

        id: controlParamRectangle
        x: 0
        y: 305
        width: 800
        height: 175
        color: "#00ffffff"

        NumberAnimation on y {
            to: 305
            duration: 400
            running: controlParamRectangle.running
        }
        NumberAnimation on y {
            from: 600
            to: 305
            duration: 400
            running: !controlParamRectangle.running
        }

        Image {
            id: image
            x: 0
            y: 0
            width: 800
            height: 175
            source: "content/175-footer.png"
            fillMode: Image.PreserveAspectFit

            Button {
                id: button1
                x: 514
                y: 127
                width: 57
                height: 40
                text: qsTr("Chart")
                onClicked: {
                    //                    rectangle1.running = true
                    stackView.push(Qt.resolvedUrl("chart.qml"))
                }
            }
        }

        Label {
            id: label10
            x: 9
            y: 0
            width: 256
            height: 29
            color: "#ffffff"
            text: "Контрольные параметры"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 13
            font.bold: true
        }

        Label {
            id: label11
            x: 9
            y: 35
            width: 67
            height: 27
            color: "#ffffff"
            text: qsTr("100.12")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.bold: true
        }

        Label {
            id: label12
            x: 9
            y: 87
            width: 67
            height: 27
            color: "#ffffff"
            text: qsTr("1200.4")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.bold: true
        }

        Label {
            id: label13
            x: 9
            y: 140
            width: 67
            height: 27
            color: "#ffffff"
            text: qsTr("10")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.bold: true
        }

        Label {
            id: label14
            x: 213
            y: 35
            width: 94
            height: 27
            color: "#ffffff"
            text: qsTr("1000")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.bold: true
        }

        Label {
            id: label15
            x: 213
            y: 87
            width: 94
            height: 27
            color: "#ffffff"
            text: qsTr("123.0")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.bold: true
        }

        Label {
            id: label16
            x: 213
            y: 140
            width: 94
            height: 27
            color: "#ffffff"
            text: qsTr("100.4")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.bold: true
        }

        Label {
            id: label17
            x: 450
            y: 35
            width: 94
            height: 27
            color: "#ffffff"
            text: qsTr("230.4")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.bold: true
        }

        Label {
            id: label18
            x: 450
            y: 87
            width: 94
            height: 27
            color: "#ffffff"
            text: qsTr("300.4")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.bold: true
        }

        Label {
            id: label19
            x: 82
            y: 35
            width: 121
            height: 27
            color: "#ffffff"
            text: qsTr("S пл, мм")
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            font.bold: true
        }

        Label {
            id: label20
            x: 82
            y: 87
            width: 121
            height: 27
            color: "#ffffff"
            text: "I св, А"
            verticalAlignment: Text.AlignVCenter
            font.bold: true
        }

        Label {
            id: label21
            x: 82
            y: 140
            width: 121
            height: 27
            color: "#ffffff"
            text: qsTr("Участок")
            verticalAlignment: Text.AlignVCenter
            font.bold: true
        }

        Label {
            id: label22
            x: 315
            y: 35
            width: 129
            height: 27
            color: "#ffffff"
            text: qsTr("Программа")
            verticalAlignment: Text.AlignVCenter
            font.bold: true
        }

        Label {
            id: label23
            x: 315
            y: 87
            width: 129
            height: 27
            color: "#ffffff"
            text: qsTr("Время сварки")
            verticalAlignment: Text.AlignVCenter
            font.bold: true
        }

        Label {
            id: label24
            x: 315
            y: 140
            width: 129
            height: 27
            color: "#ffffff"
            text: qsTr("Т масла")
            verticalAlignment: Text.AlignVCenter
            font.bold: true
        }

        Label {
            id: label25
            x: 550
            y: 35
            width: 242
            height: 27
            color: "#ffffff"
            text: qsTr("Скорость осадки (мм/с)")
            verticalAlignment: Text.AlignVCenter
            font.bold: true
        }

        Label {
            id: label26
            x: 550
            y: 87
            width: 242
            height: 27
            color: "#ffffff"
            text: qsTr("Величина осадки (мм)")
            verticalAlignment: Text.AlignVCenter
            font.bold: true
        }

        Button {
            id: button
            x: 580
            y: 127
            width: 57
            height: 40
            text: qsTr("Run")
            onClicked: {
                leftClampControl.running = !leftClampControl.running
                rightClampControl1.running = !rightClampControl1.running
                statusIndicator18.active = !statusIndicator18.active
            }
        }

        SilverBtn {
            id: btnHome1
            x: 643
            y: 127
            width: 149
            height: 40
            text: qsTr("Выход")
            anchors.bottom: btnHome1.top
            font.capitalization: Font.AllUppercase
            font.family: "Proxima Nova"
            font.bold: true
            font.styleName: "Regular"
            anchors.bottomMargin: 21
            font.pointSize: 12
            onClicked: {
                controlParamRectangle.running = !controlParamRectangle.running
                stackView.push(Qt.resolvedUrl("index.qml"))
            }
        }
    }

    //    IntDialog {
    //        id: integerDialog
    //        anchors.centerIn: parent
    //    }
    //    ButtonIndicator {
    //        id: btnIndicator
    //        x: 592
    //        y: 432
    //        onClicked: {
    //            leftClampControl.running = !leftClampControl.running
    //            rightClampControl1.running = !rightClampControl1.running
    //            statusIndicator18.active = !statusIndicator18.active
    //            btnIndicator.running = !btnIndicator.running
    //            //            integerDialog.open()
    //        }
    //    }

    //    MouseArea {
    //        anchors.fill: parent
    //        anchors.rightMargin: 0
    //        anchors.bottomMargin: 0
    //        anchors.leftMargin: 0
    //        anchors.topMargin: 0
    //        onClicked: {
    //            leftClampControl.running = !leftClampControl.running
    //            rightClampControl1.running = !rightClampControl1.running
    //            statusIndicator18.active = !statusIndicator18.active
    //        }
    //    }
}
