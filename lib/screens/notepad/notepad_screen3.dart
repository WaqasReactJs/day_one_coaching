import 'package:flutter/material.dart';

class NotepadScreen3 extends StatefulWidget {
  const NotepadScreen3({Key? key}) : super(key: key);

  @override
  State<NotepadScreen3> createState() => _NotepadScreen3State();
}

class _NotepadScreen3State extends State<NotepadScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 24,
            right: 24,
          ),
          child: ListView(
            children: [
              TextFormField(
                maxLines: 14,
                decoration: InputDecoration(
                  hintText: 'Type here',
                  border: OutlineInputBorder(),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                  gradient: LinearGradient(
                    colors: [Color(0xff83FF99), Color(0xff49C55F)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                width: double.infinity,
                height: 50,
                child: Row(
                  children: [
                    Expanded(
                      child: Image(
                        image: AssetImage("assets/images/text.png"),
                      ),
                    ),
                    Expanded(
                      child: Image(
                        image: AssetImage("assets/images/pic.png"),
                      ),
                    ),
                    Expanded(
                      child: Image(
                        image: AssetImage("assets/images/front_camera.png"),
                      ),
                    ),
                    Expanded(
                      child: Image(
                        image: AssetImage("assets/images/setting_icon.png"),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 7,right: 7,top: 23),
                child: Row(children: [
                  Expanded(
                    child: Container(
                      width: 222,
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        border: Border.all(color: Color(0xffF15B2A), width: 1),

                      ),
                      child: Center(
                          child: Text(
                            "Share",
                            style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black, fontSize: 16),
                          )),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Expanded(
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
                            style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white, fontSize: 16),
                          )),
                    ),
                  ),

                ],),
              )
            ],
          ),
        ),
      ),
    );
  }
}
