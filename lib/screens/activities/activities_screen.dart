import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:weekly_date_picker/weekly_date_picker.dart';

class ActivitiesScreen extends StatefulWidget {
  const ActivitiesScreen({Key? key}) : super(key: key);

  @override
  State<ActivitiesScreen> createState() => _ActivitiesScreenState();
}

class _ActivitiesScreenState extends State<ActivitiesScreen> {
  TextEditingController txtController = TextEditingController();
  List<bool> _isChecked = [false, false, false, false, false];
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
          "Activities",
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
              ),              WeeklyDatePicker(
                selectedDay: _selectedDay,
                changeDay: (value) => setState(() {
                  _selectedDay = value;
                }),
                enableWeeknumberText: false,
                weeknumberColor: const Color(0xFF57AF87),
                weeknumberTextColor: Colors.white,

                backgroundColor:  Colors.transparent,
                weekdayTextColor: const Color(0xFF8A8A8A),
                digitsColor: Colors.white,
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
              Row(
                children: [
                  Flexible(
                    child: Container(
                      height: 38,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [Color(0xff65D673), Color(0xff37B064)]),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage("assets/images/sun.png"),
                            width: 24,
                            height: 25,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Morning"),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffEDEEF1FF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 38,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage("assets/images/stars.png"),
                            width: 24,
                            height: 25,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Evening"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 23,
              ),
              Text(
                "Add new Activity",
                style: TextStyle(
                    color: Color(0xff1d1617),
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                controller: txtController,
                decoration: InputDecoration(
                  hintText: 'Type here',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                ),
              ),
              SizedBox(
                height: 21,
              ),
              Text(
                "Select from the following Activities",
                style: TextStyle(
                    color: Color(0xff1d1617),
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
              SizedBox(
                height: 8,
              ),
              Column(
                children: <Widget>[
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,

                    title: Text('Drinking 300ml Water'),
                    value: _isChecked[0],
                    onChanged: ( value) {
                      setState(() {
                        _isChecked[0] = value!;
                      });
                    },
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,

                    title: Text('Walk for 30 mins'),
                    value: _isChecked[1],
                    onChanged: ( value) {
                      setState(() {
                        _isChecked[1] = value!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,

                    title: Text('Exercise for 30 mins'),
                    value: _isChecked[2],
                    onChanged: ( value) {
                      setState(() {
                        _isChecked[2] = value!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,

                    title: Text('Spend time in nature'),
                    value: _isChecked[3],
                    onChanged: ( value) {
                      setState(() {
                        _isChecked[3] = value!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,

                    value: _isChecked[4],
                    title: Text('Rest for one hour'),

                    onChanged: ( value) {
                      setState(() {
                        _isChecked[4] = value!;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 33,
              ),
              InkWell(
                onTap: () {
                  // if (_formKey.currentState!.validate()) {
                  //   BlocProvider.of<LoginCubit>(context).submittedData(
                  //     context,
                  //     emailController.text.trim(),
                  //     passwordController.text.trim(),
                  //   );
                  // }
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 78.0,right: 78.0),
                  child: Container(
                    width: 222,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Color(0xffF69A7B), Color(0xffF15B2A)]),
                    ),
                    child: Center(
                        child: Text(
                          "Save",
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        )),
                  ),
                ),
              ),
              SizedBox(height: 35,),
            ],
          ),

        ),
      ),
    );
  }
}
