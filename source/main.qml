import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    id: mainWindow
    width: 800
    height: 480
    minimumWidth: 800
    minimumHeight: 480
    maximumWidth: 800
    maximumHeight: 480
    visible: true
    title: qsTr("MCO750 (в релизе titlebar будет отсутствовать)")

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 800
        height: 480
        color: "#ffffff"

        StackView {
            id: stackView
            x: 0
            y: 0
            width: 800
            height: 480
            initialItem: Qt.resolvedUrl("pages/index.qml")
            pushEnter: Transition {
                PropertyAnimation {
                    property: "scale" /// "opacity"
                    from: 0
                    to: 1
                    duration: 200
                }
            }
            pushExit: Transition {
                PropertyAnimation {
                    property: "opacity"
                    from: 1
                    to: 0
                    duration: 200
                }
            }
            popEnter: Transition {
                PropertyAnimation {
                    property: "opacity"
                    from: 1
                    to: 0
                    duration: 200
                }
            }
            popExit: Transition {
                PropertyAnimation {
                    property: "opacity"
                    from: 0
                    to: 1
                    duration: 200
                }
            }
        }
    }
}
