import QtQuick 2.0
import QtCharts 2.15
import QtQuick.XmlListModel 2.0

import "../sensors/rt-chart/"

Item {

    RTChart {
        id: realTimeChart
    }

    Connections {
        target: handler

        function onChartData(slices) {
            console.log(slices)
            pieSerId.append(slices)
            //            for (var name in slices) {
            //                console.log(slices[name])
            //                pieSerId.append(slices[name])
            //            }
        }
    }
}
/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:800}
}
##^##*/

