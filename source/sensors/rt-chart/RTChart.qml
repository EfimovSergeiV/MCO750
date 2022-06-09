import QtQuick 2.0
import QtCharts 2.0
import QtQuick.Controls 2.15
import QtQuick.XmlListModel 2.0

Item {
    width: 800
    height: 400
    property int currentIndex: 0
    property bool running: true

    ChartView {
        id: chartView
        title: "Driver Speeds, lap 1"
        anchors.fill: parent
        legend.alignment: Qt.AlignTop
        animationOptions: ChartView.SeriesAnimations
        antialiasing: true
    }

    Connections {
        target: handler

        function onChartData(data) {
            console.log(data)

            if (running) {

                var lineSeries = chartView.series(data[0])
                var lineSeries1 = chartView.series(data[0] + " 1")

                if (!lineSeries) {

                    lineSeries = chartView.createSeries(
                                ChartView.SeriesTypeLine, data[0],
                                data[1], data[2])

                    lineSeries1 = chartView.createSeries(
                                ChartView.SeriesTypeLine, data[0] + " 1",
                                data[1], data[2] + 10)

                    chartView.axisY().min = 0
                    chartView.axisY().max = 300
                    chartView.axisY().tickCount = 10
                    chartView.axisY().titleText = "kA"
                    chartView.axisX().titleText = "step"
                    chartView.axisX().labelFormat = "x" /// = "%.0f"
                }

                lineSeries.append(data[1], data[2])
                lineSeries1.append(data[1], data[2] + 10)

                if (data[1] > 20) {

                    chartView.axisX().max = Number(data[1]) + 1
                    chartView.axisX().min = chartView.axisX().max - 20
                } else {

                    chartView.axisX().max = 20
                    chartView.axisX().min = 0
                }

                chartView.axisX().tickCount = chartView.axisX(
                            ).max - chartView.axisX().min + 1
            } else {

                chartView.animationOptions = ChartView.AllAnimations
                chartView.axisX().min = 0
                chartView.axisX().max = speedsXml.get(
                            currentIndex - 1).speedTrap
            }
        }
    }
}
