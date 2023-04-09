import 'package:flutter/material.dart';

class AffirmationScreen2 extends StatefulWidget {
  const AffirmationScreen2({Key? key}) : super(key: key);

  @override
  State<AffirmationScreen2> createState() => _AffirmationScreen2State();
}

class _AffirmationScreen2State extends State<AffirmationScreen2> {
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
              "New Folder",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Color(0xfff15b21)),
            ),
            SizedBox(
              height: 13,
            ),
            Text(
              "Folder Name",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color(0xff1d1617)),
            ),
            SizedBox(
              height: 5,
            ),
            TextFormField(
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
              height: 19,
            ),
            Text(
              "Upload Icon",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color(0xff1d1617)),
            ),
            SizedBox(
              height: 5,
            ),
            TextFormField(
              controller: txt1Controller,
              decoration: InputDecoration(
                suffixIcon: Container(
                  width: 130,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0xffF69A7B), Color(0xffF15B2A)]),
                  ),
                  child: Center(
                      child: Text(
                    "Upload",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffffffff)),
                  )),
                ),
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
            SizedBox(height: 47,),
             Padding(

               padding: EdgeInsets.only(left: 100,right: 100),
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

          ],
        ),
      ),
    );
  }
}
