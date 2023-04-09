import 'package:flutter/material.dart';

class MindGymLessons2 extends StatefulWidget {
  const MindGymLessons2({Key? key}) : super(key: key);

  @override
  State<MindGymLessons2> createState() => _MindGymLessons2State();
}

class _MindGymLessons2State extends State<MindGymLessons2> {
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
          child: ListView(
            children: [
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
              Divider(
                height: 1,
                color: Color(0xff37B064),
              ),
              SizedBox(
                height: 8,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          color: Color(0xffFFEDE5),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              "01",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 20),
                            ),
                          )),
                      SizedBox(
                        width: 17,
                      ),
                      Text(":"),
                      SizedBox(
                        width: 17,
                      ),
                      Container(
                          color: Color(0xffFFEDE5),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text("25",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                          )),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Mins",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16 ,color: Color(0xffADA4A5),),),
                      SizedBox(
                        width: 34,
                      ),
                      Text("Sec",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16 ,color: Color(0xffADA4A5),),),
                    ],
                  ),
                ],
              ),
              Divider(
                height: 1,
                color: Color(0xff37B064),
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
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.only(left: 68, right: 68),
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
                          "Start Timer to Continue",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                ),
              ),
              // replace with your own image
            ],
          ),
        ),
      ),
    );
  }
}
