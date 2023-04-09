import 'package:flutter/material.dart';

class AddFriendScreen extends StatefulWidget {
  const AddFriendScreen({Key? key}) : super(key: key);

  @override
  State<AddFriendScreen> createState() => _AddFriendScreenState();
}

class _AddFriendScreenState extends State<AddFriendScreen> {
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
          "Add Friends",
          style: TextStyle(
              color: Color(0xff1D1617),
              fontFamily: "Poppins",
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 18, left: 10, right: 10),
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Card(
                color: Color(0xffffffff),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 11, top: 11, bottom: 11),
                      child: Container(
                        width: 55,
                        height: 55,
                        child: Image(
                          image: AssetImage("assets/images/man.png"),
                          height: 36,
                          width: 38,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xffF4D8CE),
                          shape: BoxShape.circle,
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
                    Container(
                      margin: const EdgeInsets.all(8.0),
                      height: 30,
                      width: 102,
                      child: const Padding(
                        padding: EdgeInsets.only(
                            left: 8.0, right: 8, top: 6, bottom: 6),
                        child: Center(
                          child: Text(
                            "Send Request",
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [Color(0xffF69A7B), Color(0xffF15B2A)]),
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
