import 'dart:developer';

import 'package:flutter/material.dart';

class NotepadScreen2 extends StatefulWidget {
  const NotepadScreen2({Key? key}) : super(key: key);

  @override
  State<NotepadScreen2> createState() => _NotepadScreen2State();
}

class _NotepadScreen2State extends State<NotepadScreen2> {
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
          "Notepad",
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
                  color: Color(0xfff55D76C)),
            ),
            SizedBox(
              height: 13,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xffD7FFE6),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Container(
                    child: Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 19, bottom: 20, left: 14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "How to stay healthy",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              "01 Apr 2023",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Color(0xff575252)),
                            ),
                            Text(
                              "Lorem ipsum dolor sit amet consectetur. Vulputate rhoncus blandit blandit bibendum sapien at vitae.",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xff575252)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  PopupMenuButton(itemBuilder: (context) {
                    return [
                      PopupMenuItem(child: Text("Edit")),
                      PopupMenuItem(child: Text("Delete")),
                    ];
                  }),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xffD7FFE6),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Container(
                    child: Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 19, bottom: 20, left: 14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "How to stay healthy",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              "01 Apr 2023",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Color(0xff575252)),
                            ),
                            Text(
                              "Lorem ipsum dolor sit amet consectetur. Vulputate rhoncus blandit blandit bibendum sapien at vitae.",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xff575252)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: PopupMenuButton(itemBuilder: (context) {
                      return [
                        PopupMenuItem(child: Text("Edit")),
                        PopupMenuItem(child: Text("Delete")),
                      ];
                    }),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xffD7FFE6),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Container(
                    child: Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 19, bottom: 20, left: 14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "How to stay healthy",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              "01 Apr 2023",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Color(0xff575252)),
                            ),
                            Text(
                              "Lorem ipsum dolor sit amet consectetur. Vulputate rhoncus blandit blandit bibendum sapien at vitae.",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xff575252)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: PopupMenuButton(itemBuilder: (context) {
                      return [
                        PopupMenuItem(child: Text("Edit")),
                        PopupMenuItem(child: Text("Delete")),
                      ];
                    }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        onPressed: () {},
        child: Container(
          width: 157,
          height: 144,
          child: Center(
            child: Container(
              height: 65,
              width: 65,
              child: Icon(
                Icons.border_color_outlined,
                color: Color(0xffffffff),
              ),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                  ),
                ],
                borderRadius: BorderRadius.circular(50),
                gradient: LinearGradient(
                  colors: [Color(0xff83FF99), Color(0xff49C55F)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
