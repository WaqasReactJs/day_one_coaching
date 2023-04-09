import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class NightAssessmentScreen extends StatefulWidget {
  const NightAssessmentScreen({Key? key}) : super(key: key);

  @override
  State<NightAssessmentScreen> createState() => _NightAssessmentScreenState();
}

class _NightAssessmentScreenState extends State<NightAssessmentScreen> {
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
          "Night Assessment",
          style: TextStyle(
              color: Color(0xff1D1617),
              fontFamily: "Poppins",
              fontWeight: FontWeight.w700),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: ListView(
            children: [
              Text(
                "Grade your overall effort",
                style: TextStyle(
                    color: Color(0xff1d1617),
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              ),
              SizedBox(
                height: 19,
              ),
              Center(
                child: RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Color(0xff37B064),
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Text(
                "Add Comments",
                style: TextStyle(
                    color: Color(0xff1d1617),
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
              SizedBox(
                height: 13,
              ),
              TextFormField(
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: 'Type here',
                  border: OutlineInputBorder(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
