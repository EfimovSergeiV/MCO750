import QtQuick 2.0
import QtQuick.Extras 1.4
import QtQuick.Controls 2.15

Button {
    property bool running: false

    id: button
    width: 200
    height: 40
    text: qsTr("WELD")
    font.bold: true

    contentItem: Text {
        text: button.text
        font: button.font
        opacity: enabled ? 1.0 : 0.3
        color: button.down ? "#ffffff" : "#ffffff"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight
    }

    background: Rectangle {
        implicitWidth: 100
        implicitHeight: 60
        color: button.down ? "#143656" : "#004F90"
        border.color: "#004F90"
        border.width: 1
        radius: 5
        //        layer.enabled: control.enabled && control.MyStyle.elevation > 0
    }

    StatusIndicator {
        id: statusIndicator
        active: button.running
        color: "green"
        width: 40
        height: 40
        scale: 0.7
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

