import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
          "Profile",
          style: TextStyle(
              color: Color(0xff1D1617),
              fontFamily: "Poppins",
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: SafeArea(
          child: ListView(
            children: [
              Row(
                children: [
                  Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/recipe.png'),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(children: [
                    Text(
                      'Jessica Lilly',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff1d1617)),
                    ),
                    Text(
                      '99% Efficient',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff7B6F72)),
                    ),
                  ]),
                  Expanded(child: Container()),
                  Row(children: [
                    Container(
                      width: 40,
                      height: 30,
                      child: Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [Color(0xffF69A7B), Color(0xffF15B2A)]),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 40,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [Color(0xffF69A7B), Color(0xffF15B2A)]),
                      ),
                      child: Icon(
                        Icons.person_add_alt,
                        color: Colors.white,
                      ),
                    ),
                  ]),
                ],
              ),
              SizedBox(
                height: 13,
              ),
              Text(
                "Be the best version of yourself",
                style: TextStyle(
                    color: Color(0xff1d1617),
                    fontWeight: FontWeight.w500,
                    fontSize: 14),
              ),
              Text(
                "Lorem ipsum dolor sit amet consectetur. Vulputate rhoncus blandit blandit bibendum sapien at vitae. Malesuada sagittis ullamcorper leo sit id. Scelerisque morbi faucibus dolor ultrices lacus vitae at pharetra ",
                style: TextStyle(
                    color: Color(0xff7B6F72),
                    fontWeight: FontWeight.w400,
                    fontSize: 12),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                "Badges You Earned",
                style: TextStyle(
                    color: Color(0xff1d1617),
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
              SizedBox(
                height: 13,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Color(0xffF4D8CE),
                            borderRadius: BorderRadius.circular(50)),
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Image(
                            image: AssetImage("assets/images/bage.png"),
                            height: 36,
                            width: 38,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "Diamond",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xff1d1617)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Color(0xffF4D8CE),
                            borderRadius: BorderRadius.circular(50)),
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Image(
                            image: AssetImage("assets/images/bage.png"),
                            height: 36,
                            width: 38,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "Diamond",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xff1d1617)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Color(0xffF4D8CE),
                            borderRadius: BorderRadius.circular(50)),
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Image(
                            image: AssetImage("assets/images/bage.png"),
                            height: 36,
                            width: 38,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "Diamond",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xff1d1617)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                            color: Color(0xffF4D8CE),
                            borderRadius: BorderRadius.circular(50)),
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Image(
                            image: AssetImage("assets/images/bage.png"),
                            height: 36,
                            width: 38,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        "Diamond",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xff1d1617)),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 19,
              ),
              Text(
                "Interests",
                style: TextStyle(
                    color: Color(0xff1d1617),
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
              //D7FFE6
              SizedBox(
                height: 14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                            color: Color(0xffD7FFE6),
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Image(
                            image: AssetImage("assets/images/girl.png"),
                            height: 36,
                            width: 38,
                          ),
                        ),
                      ),
                      SizedBox(height: 8,),
                      Text(
                        "Walking",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xff1d1617)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                            color: Color(0xffD7FFE6),
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Image(
                            image: AssetImage("assets/images/girl2.png"),
                            height: 36,
                            width: 38,
                          ),
                        ),
                      ),
                      SizedBox(height: 8,),
                      Text(
                        "Drinking",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xff1d1617)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                            color: Color(0xffD7FFE6),
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Image(
                            image: AssetImage("assets/images/girl3.png"),
                            height: 36,
                            width: 38,
                          ),
                        ),
                      ),
                      SizedBox(height: 8,),
                      Text(
                        "Exercise",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xff1d1617)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                            color: Color(0xffD7FFE6),
                            borderRadius: BorderRadius.circular(5)),
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Image(
                            image: AssetImage("assets/images/cook.png"),
                            height: 36,
                            width: 38,
                          ),
                        ),
                      ),
                      SizedBox(height: 8,),
                      Text(
                        "Health\nEating",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color(0xff1d1617)),
                      )
                    ],
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
