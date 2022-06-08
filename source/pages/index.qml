import QtQuick 2.0
import "../controls"
import QtQuick.Controls 2.15

Item {
    id: rootIndex
    width: 800
    height: 480

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 800
        height: 480
        color: "#ffffff"

        Image {
            id: image2
            x: 0
            y: 0
            width: 800
            height: 480
            source: "content/index-mco-bg.png"
            fillMode: Image.PreserveAspectFit
        }

        Rectangle {
            property bool running: false

            id: rectangle1
            x: 0
            y: 0
            width: 600
            height: 480
            color: "#00000000"

            NumberAnimation on x {
                to: -600
                duration: 400
                running: rectangle1.running
            }
            NumberAnimation on x {
                from: -600
                to: 0
                duration: 400
                running: !rectangle1.running
            }

            Image {
                id: image
                x: 0
                y: 0
                width: 600
                height: 480
                source: "content/index-left-bg.png"
                fillMode: Image.PreserveAspectFit

                SilverBtn {
                    id: btnHome
                    x: 37
                    y: 135
                    width: 240
                    height: 65
                    font.pointSize: 12
                    font.styleName: "Regular"
                    font.family: "Proxima Nova"
                    font.bold: true
                    text: qsTr("Визуализация")
                    font.capitalization: Font.AllUppercase
                    onClicked: {
                        rectangle1.running = true
                        stackView.push(Qt.resolvedUrl("action.qml"))
                    }
                }

                SilverBtn {
                    id: btnHome1
                    x: 37
                    y: 215
                    width: 240
                    height: 65
                    text: qsTr("Программа сварки")
                    anchors.bottom: btnHome1.top
                    font.capitalization: Font.AllUppercase
                    font.family: "Proxima Nova"
                    font.bold: true
                    font.styleName: "Regular"
                    anchors.bottomMargin: 21
                    font.pointSize: 12
                    onClicked: {
                        rectangle1.running = true
                        stackView.push(Qt.resolvedUrl("chart.qml"))
                    }
                }

                SilverBtn {
                    id: btnHome2
                    x: 37
                    y: 294
                    width: 240
                    height: 65
                    text: qsTr("Установки")
                    anchors.bottom: btnHome2.top
                    font.capitalization: Font.AllUppercase
                    font.family: "Proxima Nova"
                    font.bold: true
                    font.styleName: "Regular"
                    anchors.bottomMargin: 21
                    font.pointSize: 12
                    onClicked: {
                        rectangle1.running = true
                        stackView.push(Qt.resolvedUrl("conf.qml"))
                    }
                }

                SilverBtn {
                    id: btnHome3
                    x: 17
                    y: 391
                    width: 400
                    height: 65
                    text: qsTr("Выбор программы")
                    anchors.left: parent.left
                    anchors.bottom: btnHome3.top
                    font.capitalization: Font.AllUppercase
                    font.family: "Proxima Nova"
                    font.bold: true
                    font.styleName: "Regular"
                    anchors.bottomMargin: 21
                    font.pointSize: 12
                    anchors.leftMargin: 37
                    onClicked: {
                        rectangle1.running = true
                        stackView.push(Qt.resolvedUrl("sel-pr.qml"))
                    }
                }

                Image {
                    id: image3
                    x: 8
                    y: 8
                    width: 136
                    height: 42
                    source: "content/mco-logo.png"
                    fillMode: Image.PreserveAspectFit
                }
            }
        }

        Rectangle {
            id: rectangle2
            x: 600
            y: 0
            width: 200
            height: 480
            color: "#00000000"

            Image {
                id: image1
                x: 0
                y: 429
                width: 192
                height: 43
                source: "content/logo.png"
                fillMode: Image.PreserveAspectFit
            }
        }
    }
    //    Component.onCompleted: handler.get_welding_programm()
    Component.onDestruction: console.log(
                                 "Закрытие приложения, сохранение логов")
}

/*##^##
Designer {
    D{i:0;height:480;width:800}
}
##^##*/

