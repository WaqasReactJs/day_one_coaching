import 'package:flutter/material.dart';

class FlashedScreen extends StatefulWidget {
  const FlashedScreen({Key? key}) : super(key: key);

  @override
  State<FlashedScreen> createState() => _FlashedScreenState();
}

class _FlashedScreenState extends State<FlashedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xff83FF99), Color(0xff49C55F)]),
          ),
        ),
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
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xff83FF99), Color(0xff49C55F)]),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 14, right: 14),
                child: Text(
                  "If your voice is high , only a few people will hear. If your thought is high, then many people will listen",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 28,
                      color: Color(0xffffffff)),
                ),
              ),
              SizedBox(
                height: 75,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 67,
                    height: 66,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffffffff)),
                    child: Center(
                      child: Text(
                        "0",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 32,
                            color: Color(0xff000000)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Container(
                    width: 67,
                    height: 66,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffffffff)),
                    child: Center(
                      child: Text(
                        "2",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 32,
                            color: Color(0xff000000)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Container(
                    width: 67,
                    height: 66,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffffffff)),
                    child: Center(
                      child: Text(
                        "0",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 32,
                            color: Color(0xff000000)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 114,
              ),
              Container(
                width: 225,
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
                  "Stop And Back To Home",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
