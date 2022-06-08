import QtQuick 2.0
import QtCharts 2.15
import QtQuick.XmlListModel 2.0

Item {
    ChartView {
        id: pieDa
        x: 250
        y: 90
        width: 300
        height: 300

        PieSeries {
            id: pieSerId
            name: "PieSeries"

            //            PieSlice {
            //                value: 13.5
            //                label: "Slice1"
            //            }

            //            PieSlice {
            //                value: 10.9
            //                label: "Slice2"
            //            }

            //            PieSlice {
            //                value: 8.6
            //                label: "Slice3"
            //            }
        }
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

