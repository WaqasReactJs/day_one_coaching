import 'package:day_one_coaching/screens/login/login_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:day_one_coaching/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
          child: IntroductionScreen(
        pages: [
          PageViewModel(
            image: Image.asset(
              "assets/images/boarding1_img.png",
              fit: BoxFit.fill,
              width: MediaQuery.of(context).size.width,
            ),
            titleWidget: Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start, // Add this line
                children: [
                  Text(
                    "Accountability",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            bodyWidget: Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start, // Add this line
                children: [
                  Expanded(
                    child: Text(
                      "Lorem ipsum dolor sit amet consectetur. Urna ac malesuada eu nullam amet nunc. Vitae egestas quisque cursus justo consectetur donec vitae diam.",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff7B6F72)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          PageViewModel(
            image: Image.asset(
              "assets/images/boarding2_img.png",
              fit: BoxFit.fill,
              width: MediaQuery.of(context).size.width,
            ),
            titleWidget: Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start, // Add this line
                children: [
                  Text(
                    "Activities",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            bodyWidget: Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start, // Add this line
                children: [
                  Expanded(
                    child: Text(
                      "Lorem ipsum dolor sit amet consectetur. Urna ac malesuada eu nullam amet nunc. Vitae egestas quisque cursus justo consectetur donec vitae diam.",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff7B6F72)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          PageViewModel(
            image: Image.asset(
              "assets/images/boarding3_img.png",
              fit: BoxFit.fill,
              width: MediaQuery.of(context).size.width,
            ),
            titleWidget: Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start, // Add this line
                children: [
                  Text(
                    "Coachings",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            bodyWidget: Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start, // Add this line
                children: [
                  Expanded(
                    child: Text(
                      "Lorem ipsum dolor sit amet consectetur. Urna ac malesuada eu nullam amet nunc. Vitae egestas quisque cursus justo consectetur donec vitae diam.",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff7B6F72)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
        done: Container(
          height: 65,
          width: 65,
          child: Icon(
            Icons.arrow_forward_ios_outlined,
            color: Color(0xffffffff),
          ),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
            borderRadius: BorderRadius.circular(50),
            gradient: LinearGradient(
              colors: [Color(0xffF15B2A), Color(0xffF69A7B)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        // done: Text("Read"),
        onDone: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (BuildContext context) => LoginScreen()));
        },
        next: Container(
          height: 65,
          width: 65,
          child: Icon(
            Icons.arrow_forward_ios_outlined,
            color: Color(0xffffffff),
          ),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
            borderRadius: BorderRadius.circular(50),
            gradient: LinearGradient(
              colors: [Color(0xffF15B2A), Color(0xffF69A7B)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),

        //Container(child: const Icon(Icons.arrow_forward)),

        // next: Text("Next"),
        back: Text("Previous"),
        // showSkipButton: true,
        // skip: const Text("Skip"),
      ));
}
