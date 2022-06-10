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

            if (running) {

                //                var lineSeries = chartView.series(data[0].name)
                //                var lineSeries1 = chartView.series(data[1].name)
                var lineSeries = null
                var line = null

                for (line in data) {
                    lineSeries = chartView.series(data[line].name)

                    if (!lineSeries) {

                        for (line in data) {
                            lineSeries = chartView.createSeries(
                                        ChartView.SeriesTypeLine,
                                        data[line].name, data[line].x,
                                        data[line].y)
                        }

                        //                    lineSeries = chartView.createSeries(
                        //                                ChartView.SeriesTypeLine, data[0].name,
                        //                                data[0].x, data[0].y)

                        //                    lineSeries1 = chartView.createSeries(
                        //                                ChartView.SeriesTypeLine, data[1].name,
                        //                                data[1].x, data[1].y)
                        chartView.axisY().min = 0
                        chartView.axisY().max = 300
                        chartView.axisY().tickCount = 10
                        chartView.axisY().titleText = "kA"
                        chartView.axisX().titleText = "step"
                        chartView.axisX().labelFormat = "x" /// = "%.0f"
                    }

                    lineSeries.append(data[line].x, data[line].y)

                    //                lineSeries.append(data[1].x, data[1].y)
                }
                if (data[1].x > 20) {

                    chartView.axisX().max = Number(data[1].x) + 1
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
