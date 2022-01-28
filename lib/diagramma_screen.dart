import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DiagrammaScreen extends StatefulWidget {
  const DiagrammaScreen({Key? key}) : super(key: key);

  @override
  _DiagrammaScreenState createState() => _DiagrammaScreenState();
}

class _DiagrammaScreenState extends State<DiagrammaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
              height: 200,
                width: 400,
                child: SfCartesianChart(

                    // Initialize category axis
                    primaryXAxis: CategoryAxis(),
                    series: <LineSeries<SalesData, String>>[
          LineSeries<SalesData, String>(
              // Bind data source
              dataSource: <SalesData>[
                SalesData('1', 35),
                SalesData('2', 2),
                SalesData('3', 2),
                SalesData('4', 222),
                SalesData('5', 222),
                SalesData('6', 40),
                SalesData('7', 40),
                SalesData('8', 44),
                SalesData('9', 40),
                SalesData('10', 66),
              ],

              xValueMapper: (SalesData sales, _) => sales.year,
              yValueMapper: (SalesData sales, _) => sales.sales),
                      LineSeries<SalesData, String>(
                        // Bind data source
                          dataSource: <SalesData>[
                            SalesData('1', 35),
                            SalesData('2', 432),
                            SalesData('3', 2),
                            SalesData('4', 111),
                            SalesData('5', 11),
                            SalesData('6', 40),
                            SalesData('7', 111),
                            SalesData('8', 44),
                            SalesData('9', 333),
                            SalesData('10', 66),
                          ],
                          name: "owbwvbv",
                          selectionBehavior: SelectionBehavior(
                            selectedBorderColor: Colors.orange,
                          ),
                          emptyPointSettings: EmptyPointSettings(
                            color: Colors.black,
                          ),
                          xAxisName: "dwevr",
                          
                          sortingOrder: SortingOrder.ascending,
                          markerSettings: MarkerSettings(
                            height: 0,
                          ),
                          dataLabelSettings: DataLabelSettings(isVisible: true),
                          xValueMapper: (SalesData sales, _) => sales.year,
                          yValueMapper: (SalesData sales, _) => sales.sales),

        ]))));
  }
}

class SalesData {
  SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
