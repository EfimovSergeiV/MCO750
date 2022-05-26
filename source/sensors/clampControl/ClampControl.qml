import QtQuick 2.0
import QtQuick.Extras 1.4
import QtQuick.Controls 2.15

Item {
    id: clampControl
    property bool running: false

    width: 50
    height: 80

    Image {
        id: root
        source: "content/background.png"

        Image {
            id: clamper
            source: "content/clamp.png"

            NumberAnimation on y {
                to: 20
                duration: 800
                running: clampControl.running
            }
            NumberAnimation on y {
                to: 0
                duration: 1200
                running: !clampControl.running
            }
        }
    }
}
