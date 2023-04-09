// import 'package:flutter/material.dart';
// import '../../model/bar_model.dart';
// import 'package:fl_chart/fl_chart.dart';
//
// class WeeklyStatisticScreen extends StatefulWidget {
//   const WeeklyStatisticScreen({Key? key}) : super(key: key);
//
//   @override
//   State<WeeklyStatisticScreen> createState() => _WeeklyStatisticScreenState();
// }
//
// class _WeeklyStatisticScreenState extends State<WeeklyStatisticScreen> {
//   List<BarModel> list = List<BarModel>.empty(growable: true);
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     list.add(BarModel(key: "0",value: "2"));
//     list.add(BarModel(key: "1",value: "4"));
//     list.add(BarModel(key: "2",value: "6"));
//     list.add(BarModel(key: "3",value: "8"));
//     list.add(BarModel(key: "4",value: "10"));
//     list.add(BarModel(key: "5",value: "8"));
//     list.add(BarModel(key: "6",value: "4"));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         actions: [
//           Image(
//             image: AssetImage("assets/images/notificationBill.png"),
//           ),
//           SizedBox(
//             width: 10,
//           ),
//         ],
//         leading: Image(
//           image: AssetImage("assets/images/lead_notification.png"),
//         ),
//         centerTitle: true,
//         title: Text(
//           "WeeklyStatistics",
//           style: TextStyle(
//               color: Color(0xff1D1617),
//               fontFamily: "Poppins",
//               fontWeight: FontWeight.w700),
//         ),
//       ),
//       body: SafeArea(
//         child: Padding(
//           padding: EdgeInsets.only(left: 24,right: 24),
//           child: ListView(
//             children: [
//               Text(
//                 "Activity Progress",
//                 style: TextStyle(
//                     color: Color(0xff1d1617),
//                     fontWeight: FontWeight.w600,
//                     fontSize: 18),
//               ),
//           Container(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//               Expanded(child: Container(
//               color: Colors.white,
//                 height: 100,
//                 width: 200,
//               ),
//               flex: 2),
//           Expanded(child: Container(
//             color: Colors.white,
//             height: 100,
//             width: 200,
//             child: BarChart(
//               BarChartData(
//                 backgroundColor: Colors.white,
//                 barGroups: _chartGroups(),
//                 borderData: FlBorderData(
//                     border: const Border(bottom: BorderSide(), left: BorderSide())),
//                 gridData: FlGridData(show: false),
//                 titlesData: FlTitlesData(
//                   bottomTitles: AxisTitles(sideTitles: _bottomTitles),
//                   leftTitles: AxisTitles(
//                       sideTitles: SideTitles(
//                         showTitles: true,
//                         interval: 1,
//                         getTitlesWidget: (value, meta) {
//                           return Text(
//                             value.toString(),
//                             style: const TextStyle(fontSize: 10),
//                           );
//                         },
//                       )),
//                   topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
//                   rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
//                 ),
//               ),
//             ),
//           )
//             ],
//           ),
//         ),
//       ),
//
//     );
//   }
//
//   List<BarChartGroupData> _chartGroups() {
//     List<BarChartGroupData> list =
//     List<BarChartGroupData>.empty(growable: true);
//     for (int i = 0; i < list.length; i++) {
//       list.add(BarChartGroupData(x: i, barRods: [
//         BarChartRodData(
//             toY: double.parse(list[i].value!), color: Colors.deepOrange)
//       ]));
//     }
//     return list;
//   }
//
//   SideTitles get _bottomTitles => SideTitles(
//     showTitles: true,
//     getTitlesWidget: (value, meta) {
//       String text = '';
//       switch (value.toInt()) {
//         case 0:
//           text = 'Mon';
//           break;
//         case 1:
//           text = 'Tue';
//           break;
//         case 2:
//           text = 'Wed';
//           break;
//         case 3:
//           text = 'Thu';
//           break;
//         case 4:
//           text = 'Fri';
//           break;
//         case 5:
//           text = 'Sat';
//           break;
//         case 6:
//           text = 'Sun';
//           break;
//       }
//
//       return Text(
//         text,
//         style: TextStyle(fontSize: 10),
//       );
//     },
//   );
// }
