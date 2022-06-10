import QtQuick 2.0
import QtCharts 2.15
import QtQuick.Controls 2.15
import QtQuick.XmlListModel 2.0

import "../sensors/rt-chart/"
import "../controls"

Item {

    SilverBtn {
        id: silverBtn3
        x: 621
        y: 432
        width: 171
        height: 40
        text: "Выход"
        font.bold: true
        font.capitalization: Font.AllUppercase
        font.styleName: "Regular"
        font.family: "Proxima Nova"
        onClicked: {
            stackView.push(Qt.resolvedUrl("index.qml"))
        }
    }

    SilverBtn {
        id: silverBtn4
        x: 438
        y: 432
        width: 171
        height: 40
        text: "STOP(SHOW)"
        font.capitalization: Font.AllUppercase
        font.family: "Proxima Nova"
        font.bold: true
        font.styleName: "Regular"
        onClicked: realTimeChart.running = !realTimeChart.running
    }

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 807
        height: 480
        color: "silver"
    }

    //    RTChart {
    //        id: realTimeChart
    //    }

    //    Connections {
    //        target: handler

    //        function onChartData(slices) {
    //            console.log(slices)
    //            pieSerId.append(slices)
    //            //            for (var name in slices) {
    //            //                console.log(slices[name])
    //            //                pieSerId.append(slices[name])
    //            //            }
    //        }
    //    }
    RTChart {
        id: realTimeChart
        property int minshow: rangeSlider.first.value
        property int maxshow: rangeSlider.second.value
    }
}
/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:800}
}
##^##*/

