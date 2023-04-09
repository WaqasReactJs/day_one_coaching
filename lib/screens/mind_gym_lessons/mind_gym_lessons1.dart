import 'package:flutter/material.dart';

class MindGymLesson1 extends StatefulWidget {
  const MindGymLesson1({Key? key}) : super(key: key);

  @override
  State<MindGymLesson1> createState() => _MindGymLesson1State();
}

class _MindGymLesson1State extends State<MindGymLesson1> {
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: ListView(
            children: [
              ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    elevation: 4, // add a shadow to the card
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          8), // round the corners of the card
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 184,
                          // adjust the height of the image as needed
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/recipe.png'),
                              // replace with your own image
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(
                                  8), // round the top corners of the image
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 13, right: 13, top: 13, bottom: 13),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'How to stay healthy',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 8, right: 9, bottom: 11),
                                child: Row(
                                  children: [
                                    Image(
                                      image:
                                          AssetImage('assets/images/clock.png'),
                                      width: 19,
                                      height: 19,
                                    ),
                                    Text(
                                      '2 Mins',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
