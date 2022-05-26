import QtQuick 2.0
import QtQuick.Controls 2.15

Button {
    id: button
    text: "SilverBtn"

    contentItem: Text {
        text: button.text
        font: button.font
        opacity: enabled ? 1.0 : 0.3
        color: button.down ? "#ffffff" : "#133656"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight
    }

    background: Rectangle {
        implicitWidth: 100
        implicitHeight: 60
        color: button.down ? "#abbdcb" : "#ffffff"
        border.color: "#004F90"
        border.width: 3
        radius: 5
        //        layer.enabled: control.enabled && control.MyStyle.elevation > 0
    }
}
