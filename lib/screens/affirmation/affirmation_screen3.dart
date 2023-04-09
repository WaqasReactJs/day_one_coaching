import 'dart:developer';

import 'package:flutter/material.dart';

class AffirmationScreen3 extends StatefulWidget {
  const AffirmationScreen3({Key? key}) : super(key: key);

  @override
  State<AffirmationScreen3> createState() => _AffirmationScreen3State();
}

class _AffirmationScreen3State extends State<AffirmationScreen3> {
  TextEditingController txt1Controller = TextEditingController();

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
          "Affirmation",
          style: TextStyle(
              color: Color(0xff1D1617),
              fontFamily: "Poppins",
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 24, right: 24, top: 23),
        child: ListView(
          children: [
            Text(
              "Health",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Color(0xfff15b21)),
            ),
            SizedBox(
              height: 13,
            ),
            Text(
              "Add new text",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color(0xff1d1617)),
            ),
            SizedBox(
              height: 5,
            ),
            TextFormField(
              maxLines: 3,
              controller: txt1Controller,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Type here",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(width: 0.05),
                ),
              ),
              style: const TextStyle(
                fontFamily: "Poppins",
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your Password';
                } else {
                  return null;
                }
              },
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 100, right: 100),
              child: InkWell(
                onTap: () {
                  // log("waqas", name: "waqas");
                },
                child: Container(
                  width: 222,
                  height: 55,
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
            SizedBox(
              height: 27,
            ),
            Text(
              "Saved Affirmation",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color(0xff1d1617)),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  colors: [
                    Color(0xffFFF7F4),
                    Color(0xffF6D6CA),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: ListTile(
                title: Text(
                  "He who has a why to live for can bear almost any How",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff1d1617)),
                ),
                subtitle: Text(
                  "Fedrick Niche",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff1d1617)),
                ),
                trailing: PopupMenuButton(itemBuilder: (context) {
                  return [
                    PopupMenuItem(child: Text("Edit")),
                    PopupMenuItem(child: Text("Delete")),
                  ];
                }),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  colors: [
                    Color(0xffFFF7F4),
                    Color(0xffF6D6CA),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: ListTile(
                title: Text(
                  "He who has a why to live for can bear almost any How",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff1d1617)),
                ),
                subtitle: Text(
                  "Fedrick Niche",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff1d1617)),
                ),
                trailing: PopupMenuButton(itemBuilder: (context) {
                  return [
                    PopupMenuItem(child: Text("Edit")),
                    PopupMenuItem(child: Text("Delete")),
                  ];
                }),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  colors: [
                    Color(0xffFFF7F4),
                    Color(0xffF6D6CA),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: ListTile(
                title: Text(
                  "He who has a why to live for can bear almost any How",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff1d1617)),
                ),
                subtitle: Text(
                  "Fedrick Niche",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff1d1617)),
                ),
                trailing: PopupMenuButton(itemBuilder: (context) {
                  return [
                    PopupMenuItem(child: Text("Edit")),
                    PopupMenuItem(child: Text("Delete")),
                  ];
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
