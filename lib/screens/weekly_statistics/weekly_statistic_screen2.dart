import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

import '../../model/ordinal_sales.dart';

class WeeklyStatisticScreen2 extends StatefulWidget {
// ignore: prefer_const_constructors_in_immutables
  WeeklyStatisticScreen2({Key? key}) : super(key: key);

  @override
  _WeeklyStatisticScreen2State createState() => _WeeklyStatisticScreen2State();
}

class _WeeklyStatisticScreen2State extends State<WeeklyStatisticScreen2> {
  List<SalesData> data = [
    SalesData('Jan', 35),
    SalesData('Feb', 28),
    SalesData('Mar', 34),
    SalesData('Apr', 32),
    SalesData('May', 40)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Syncfusion Flutter chart'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        // implement the bar chart
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Text("waqas")
              ),
            ),

          ],
        ),
      ),
    );

  }
}
