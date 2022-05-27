import QtQuick 2.0
import QtQuick.Controls 2.15

Item {
    property string keyname: "0"
    visible: true

    id: root
    width: 73
    height: 48

    MouseArea {
        id: btnHaracter
        anchors.fill: parent

        onClicked: {
            print(activeFocusItem, root.keyname)
            activeFocusItem.text = activeFocusItem.text + root.keyname
        }
    }

    Rectangle {
        id: rectangle15
        x: 0
        y: 0
        width: root.width
        height: root.height
        //        color: "#ffffff"
        color: btnHaracter.pressed ? "#abbdcb" : "#ffffff"

        Label {
            id: label26
            color: "#143656"

            text: root.keyname
            anchors.fill: parent
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.bold: true
        }
    }
}
