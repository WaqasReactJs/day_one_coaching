import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:weekly_date_picker/weekly_date_picker.dart';

class StatisticScreen extends StatefulWidget {
  const StatisticScreen({Key? key}) : super(key: key);

  @override
  State<StatisticScreen> createState() => _StatisticScreenState();
}

class _StatisticScreenState extends State<StatisticScreen> {
  DateTime _selectedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Image(
            image: AssetImage("assets/images/notificationBill.png"),
          ),
          SizedBox(
            width: 10,
          ),
        ],
        leading: Image(
          image: AssetImage("assets/images/lead_notification.png"),
        ),
        centerTitle: true,
        title: Text(
          "Statistics",
          style: TextStyle(
              color: Color(0xff1D1617),
              fontFamily: "Poppins",
              fontWeight: FontWeight.w700),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: ListView(
            children: [
              Container(
                height: 56,
                child: Center(
                  child: Text(
                    DateFormat('MMMM yyyy').format(_selectedDay),
                    style: TextStyle(fontSize: 14, color: Color(0xffADA4A5)),
                  ),
                ),
              ),
              WeeklyDatePicker(

                selectedDay: _selectedDay,

                changeDay: (value) => setState(() {
                  _selectedDay = value;
                }),
                enableWeeknumberText: false,
                weeknumberColor: const Color(0xFF57AF87),
                weeknumberTextColor: Colors.white,
                backgroundColor:  Colors.transparent,
                weekdayTextColor: const Color(0xFF8A8A8A),
                digitsColor: Color(0xff7B6F72),

                selectedBackgroundColor: const Color(0xFF57AF87),
                weekdays: ["Mo", "Tu", "We", "Th", "Fr"],
                daysInWeek: 5,
              ),
              // Container(
              //   child: SfCalendar(
              //     view: CalendarView.week,
              //     firstDayOfWeek: 1, // Monday
              //   ),
              // ),
              SizedBox(
                height: 23,
              ),
              Text(
                "Activities",
                style: TextStyle(
                    color: Color(0xff1d1617),
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                child: CircularPercentIndicator(
                  radius: 100,
                  lineWidth: 10,
                  percent: 60 / 100,
                  animation: true,
                  animationDuration: 1500,
                  center: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "60%",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                          ),
                        ),
                        Text(
                          "Consistency",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  linearGradient: LinearGradient(
                    colors: [Color(0xffF69A7B), Color(0xffF15B2A)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Center(
                child: Text(
                  "Drinking 300ml Water",
                  style: TextStyle(
                      color: Color(0xff1d1617),
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Container(
                child: LinearPercentIndicator(
                  lineHeight: 10,
                  width: MediaQuery.of(context).size.width * 0.8,
                  percent: 100 / 100,
                  animation: true,
                  trailing: Text(
                    "100%",
                    style: TextStyle(color: Color(0xff1d1617), fontSize: 20),
                  ),
                  animationDuration: 1500,
                  linearGradient: LinearGradient(
                    colors: [Color(0xffF69A7B), Color(0xffF15B2A)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Center(
                child: Text(
                  "Walk for 30 mins",
                  style: TextStyle(
                      color: Color(0xff1d1617),
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Container(
                child: LinearPercentIndicator(
                  lineHeight: 10,
                  width: MediaQuery.of(context).size.width * 0.8,
                  percent: 80 / 100,
                  animation: true,
                  trailing: Text(
                    "80%",
                    style: TextStyle(color: Color(0xff1d1617), fontSize: 20),
                  ),
                  animationDuration: 1500,
                  linearGradient: LinearGradient(
                    colors: [Color(0xffF69A7B), Color(0xffF15B2A)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Center(
                child: Text(
                  "Spend time in nature",
                  style: TextStyle(
                      color: Color(0xff1d1617),
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Container(
                child: LinearPercentIndicator(
                  lineHeight: 10,
                  width: MediaQuery.of(context).size.width * 0.8,
                  percent: 80 / 100,
                  animation: true,
                  trailing: Text(
                    "80%",
                    style: TextStyle(color: Color(0xff1d1617), fontSize: 20),
                  ),
                  animationDuration: 1500,
                  linearGradient: LinearGradient(
                    colors: [Color(0xffF69A7B), Color(0xffF15B2A)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Center(
                child: Text(
                  "Reading a book",
                  style: TextStyle(
                      color: Color(0xff1d1617),
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Container(
                child: LinearPercentIndicator(
                  lineHeight: 10,
                  width: MediaQuery.of(context).size.width * 0.8,
                  percent: 100 / 100,
                  animation: true,
                  trailing: Text(
                    "100%",
                    style: TextStyle(color: Color(0xff1d1617), fontSize: 20),
                  ),
                  animationDuration: 1500,
                  linearGradient: LinearGradient(
                    colors: [Color(0xffF69A7B), Color(0xffF15B2A)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Center(
                child: Text(
                  "Walk for 30 mins",
                  style: TextStyle(
                      color: Color(0xff1d1617),
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
              ),
              SizedBox(
                height: 36,
              ),
              Text(
                "Badges You Earned",
                style: TextStyle(
                    color: Color(0xff1d1617),
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                    color: Color(0xffF8CEC0FF),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 27),
                  child: Column(
                    children: [
                      Text(
                        "You have earned two badges today",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff1D1617)),
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Image(
                                image: AssetImage("assets/images/bage.png"),
                                width: 77,
                                height: 73,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text("Diamond"),
                              SizedBox(
                                height: 8,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Image(
                                image: AssetImage("assets/images/bage.png"),
                                width: 77,
                                height: 73,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text("Super Star"),
                              SizedBox(
                                height: 8,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
