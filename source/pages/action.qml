import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.Extras 1.4
import "../sensors/clampControl"

//import "../sensors/buttonIndicator"
Item {
    id: rootAction
    width: 800
    height: 480

    ClampControl {
        id: leftClampControl
        x: 235
        y: 126
        running: false
    }

    ClampControl {
        id: rightClampControl1
        x: 324
        y: 126
        running: false
    }

    Image {
        id: clampPlatform
        x: 235
        y: 230
        source: "content/clamp-platform.png"
    }

    Image {
        id: clampPlatform1
        x: 324
        y: 230
        source: "content/clamp-platform.png"
    }

    Image {
        id: leftPlatform
        x: 324
        y: 249
        source: "content/left-platform.png"
    }

    Image {
        id: rightPlatform
        x: 165
        y: 249
        source: "content/left-platform.png"
    }

    StatusIndicator {
        id: statusIndicator
        x: 291
        y: 261
        width: 27
        height: 28
    }

    StatusIndicator {
        id: statusIndicator1
        x: 406
        y: 126
    }

    StatusIndicator {
        id: statusIndicator2
        x: 406
        y: 170
    }

    StatusIndicator {
        id: statusIndicator3
        x: 165
        y: 126
    }

    StatusIndicator {
        id: statusIndicator4
        x: 165
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
        x: 109
        y: 170
        running: false
    }

    ClampControl {
        id: leftClampControl2
        x: 450
        y: 170
        running: false
    }

    StatusIndicator {
        id: statusIndicator14
        x: 506
        y: 212
    }

    StatusIndicator {
        id: statusIndicator15
        x: 506
        y: 250
    }

    StatusIndicator {
        id: statusIndicator16
        x: 65
        y: 250
    }

    StatusIndicator {
        id: statusIndicator17
        x: 65
        y: 212
    }

    StatusIndicator {
        id: statusIndicator18
        x: 500
        y: 46
        active: false
        color: "green"
        width: 50
        height: 50
    }

    StatusIndicator {
        id: statusIndicator19
        x: 324
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

    Button {
        id: button
        x: 580
        y: 432
        width: 57
        height: 40
        text: qsTr("run")
        onClicked: {
            leftClampControl.running = !leftClampControl.running
            rightClampControl1.running = !rightClampControl1.running
            statusIndicator18.active = !statusIndicator18.active
        }
    }

    Button {
        id: button1
        x: 643
        y: 432
        width: 149
        height: 40
        text: qsTr("back")
        onClicked: {
            stackView.push(Qt.resolvedUrl("index.qml"))
        }
    }

    Label {
        id: label10
        x: 8
        y: 305
        width: 210
        height: 29
        text: "Контрольные параметры"
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 13
        font.bold: true
    }

    Label {
        id: label11
        x: 9
        y: 340
        width: 67
        height: 27
        text: qsTr("100.12")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.bold: true
    }

    Label {
        id: label12
        x: 9
        y: 392
        width: 67
        height: 27
        text: qsTr("1200.4")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.bold: true
    }

    Label {
        id: label13
        x: 9
        y: 445
        width: 67
        height: 27
        text: qsTr("10")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.bold: true
    }

    Label {
        id: label14
        x: 213
        y: 340
        width: 94
        height: 27
        text: qsTr("1000")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.bold: true
    }

    Label {
        id: label15
        x: 213
        y: 392
        width: 94
        height: 27
        text: qsTr("123.0")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.bold: true
    }

    Label {
        id: label16
        x: 213
        y: 445
        width: 94
        height: 27
        text: qsTr("100.4")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.bold: true
    }

    Label {
        id: label17
        x: 450
        y: 340
        width: 94
        height: 27
        text: qsTr("230.4")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.bold: true
    }

    Label {
        id: label18
        x: 450
        y: 392
        width: 94
        height: 27
        text: qsTr("300.4")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.bold: true
    }

    Label {
        id: label19
        x: 82
        y: 340
        width: 121
        height: 27
        text: qsTr("Sпл, мм")
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        font.bold: true
    }

    Label {
        id: label20
        x: 82
        y: 392
        width: 121
        height: 27
        text: "I св, А"
        verticalAlignment: Text.AlignVCenter
        font.bold: true
    }

    Label {
        id: label21
        x: 82
        y: 445
        width: 121
        height: 27
        text: qsTr("Участок")
        verticalAlignment: Text.AlignVCenter
        font.bold: true
    }

    Label {
        id: label22
        x: 315
        y: 340
        width: 129
        height: 27
        text: qsTr("Программа")
        verticalAlignment: Text.AlignVCenter
        font.bold: true
    }

    Label {
        id: label23
        x: 315
        y: 392
        width: 129
        height: 27
        text: qsTr("Время сварки")
        verticalAlignment: Text.AlignVCenter
        font.bold: true
    }

    Label {
        id: label24
        x: 315
        y: 445
        width: 129
        height: 27
        text: qsTr("Т масла")
        verticalAlignment: Text.AlignVCenter
        font.bold: true
    }

    Label {
        id: label25
        x: 550
        y: 340
        width: 242
        height: 27
        text: qsTr("Скорость осадки (мм/с)")
        verticalAlignment: Text.AlignVCenter
        font.bold: true
    }

    Label {
        id: label26
        x: 550
        y: 392
        width: 242
        height: 27
        text: qsTr("Величина осадки (мм)")
        verticalAlignment: Text.AlignVCenter
        font.bold: true
    }

    Label {
        id: label27
        x: 368
        y: 295
        width: 76
        height: 38
        text: qsTr("Label")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.bold: true
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
