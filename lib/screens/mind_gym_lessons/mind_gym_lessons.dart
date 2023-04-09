import 'package:flutter/material.dart';

class MindGymLessons extends StatefulWidget {
  const MindGymLessons({Key? key}) : super(key: key);

  @override
  State<MindGymLessons> createState() => _MindGymLessonsState();
}

class _MindGymLessonsState extends State<MindGymLessons> {
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
          "Mind Gym Lessons",
          style: TextStyle(
              color: Color(0xff1D1617),
              fontFamily: "Poppins",
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 24, right: 24),
        child: SafeArea(
          child: Column(children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 210,
              child: Image(
                image: AssetImage('assets/images/recipe.png'),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Action Notes",
              style: TextStyle(
                  color: Color(0xff1d1617),
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "1. Lorem ipsum dolor sit amet consectetur. Vulputate rhoncus blandit blandit bibendum sapien at vitae. ",
              style: TextStyle(
                  color: Color(0xff50494B),
                  fontWeight: FontWeight.w400,
                  fontSize: 12),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "2. Lorem ipsum dolor sit amet consectetur. Vulputate rhoncus blandit blandit bibendum sapien at vitae. ",
              style: TextStyle(
                  color: Color(0xff50494B),
                  fontWeight: FontWeight.w400,
                  fontSize: 12),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "3. Lorem ipsum dolor sit amet consectetur. Vulputate rhoncus blandit blandit bibendum sapien at vitae. ",
              style: TextStyle(
                  color: Color(0xff50494B),
                  fontWeight: FontWeight.w400,
                  fontSize: 12),
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  color: Color(0xffF15B2A),
                  image: AssetImage('assets/images/timer.png'),
                  width: 18,
                  height: 21,
                ),
                SizedBox(
                  width: 7,
                ),
                Text(
                  'Start Timer',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffF15B2A),
                  ),
                ),
              ],
            ),
            Expanded(child: Container()),
            Row(children: [
              Expanded(
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xffF15B2A), // replace with your desired color
                        width: 1.0, // replace with your desired border width
                      ),

                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Center(
                        child: Text(
                      "Save",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    )),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width,
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
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    )),
                  ),
                ),
              ),

            ]),
            SizedBox(
              height: 32,
            ),
          ]),
        ),
      ),
    );
  }
}
