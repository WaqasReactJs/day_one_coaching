import 'package:dart_quote/string_quote.dart';
import 'package:flutter/material.dart';
import 'package:dart_quote/dart_quote.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          "Home",
          style: TextStyle(
              color: Color(0xff1D1617),
              fontFamily: "Poppins",
              fontWeight: FontWeight.w700),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, top: 19, right: 24),
          child: ListView(
            children: [
              Text(
                "Welcome Back",
                style: TextStyle(fontSize: 12, color: Color(0xffADA4A5)),
              ),
              Text(
                "Masi Ramezanzade",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff1D1617)),
              ),
              SizedBox(
                height: 11,
              ),
              Container(
                height: 146,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Color(0xff0D974D), Color(0xff61DB67)]),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(21),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Quote Of The Day",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffffffff)),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        """""If your voice is high , only a few people will hear. If your thought is high, then many people will listen"""
                        "",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffffffff)),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "Invajy",
                        style: TextStyle(
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w600,
                            fontSize: 12),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 26,
              ),
              Text(
                "Video Of The Day",
                style: TextStyle(
                    color: Color(0xff1d1617),
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
              SizedBox(
                height: 7,
              ),
              Card(
                color: Color(0xffffffff),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image(
                      image: AssetImage("assets/images/video_section.png"),
                      width: 350,
                      height: 150,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'How to stay healthy and fit',
                                style: TextStyle(
                                  color: Color(0xff1D1617),
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 5.0),
                              Text(
                                'Lorem ipsum dolor sit amet consectetur.',
                                style: TextStyle(
                                  color: Color(0xff564F50),
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          Image(
                            image: AssetImage("assets/images/play.png"),
                            width: 33,
                            height: 33,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 26,
              ),
              Text(
                "Blog Of The Day",
                style: TextStyle(
                    color: Color(0xff1d1617),
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
              Card(
                color: Color(0xffffffff),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffF15B2A)),
                      child: Image(
                        image: AssetImage("assets/images/blog_section_g.png"),
                        width: 350,
                        height: 150,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'How to stay healthy and fit',
                            style: TextStyle(
                              color: Color(0xff1D1617),
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            'Lorem ipsum dolor sit amet consectetur.',
                            style: TextStyle(
                              color: Color(0xff564F50),
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 26,
              ),
              Text(
                "Badges You Earned",
                style: TextStyle(
                    color: Color(0xff1d1617),
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
              SizedBox(
                height: 7,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: BoxDecoration(
                        color: Color(0xffF8CEC0FF),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 27),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Image(
                                image: AssetImage("assets/images/bage.png"),
                                width: 77,
                                height: 73,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text("Diamond")
                            ],
                          ),
                          Column(
                            children: [
                              Image(
                                image: AssetImage("assets/images/bage.png"),
                                width: 77,
                                height: 73,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text("Super Star")
                            ],
                          ),
                          Column(
                            children: [
                              Image(
                                image: AssetImage("assets/images/bage.png"),
                                width: 77,
                                height: 73,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text("Super Star")
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: MediaQuery.of(context).size.width * .2,
                    right: MediaQuery.of(context).size.width * .2,
                    bottom: -25,
                    child: Container(
                      child: Container(
                        width: 222,
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
                          "View All",
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 26,
              ),
              Text(
                "Mind Gym",
                style: TextStyle(
                    color: Color(0xff1d1617),
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
              SizedBox(
                height: 7,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Card(
                      elevation: 4, // add a shadow to the card
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            8), // round the corners of the card
                      ),
                      child: Column(

                        children: [
                          Container(
                            width: 187,
                            height: 150,
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 8, right:8,top: 8),
                                child: Text(
                                  'How to stay healthy',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8,right: 9,bottom: 11),
                                child: Row(
                                  children: [
                                    Image(

                                      image: AssetImage('assets/images/clock.png'),width: 19,height: 19,),

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
                          )

                        ],
                      ),
                    ),
                    Card(
                      elevation: 4, // add a shadow to the card
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            8), // round the corners of the card
                      ),
                      child: Column(

                        children: [
                          Container(
                            width: 187,
                            height: 150,
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 8, right:8,top: 8),
                                child: Text(
                                  'How to stay healthy',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8,right: 9,bottom: 11),
                                child: Row(
                                  children: [
                                    Image(

                                      image: AssetImage('assets/images/clock.png'),width: 19,height: 19,),

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
                          )

                        ],
                      ),
                    ),
                    Card(
                      elevation: 4, // add a shadow to the card
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            8), // round the corners of the card
                      ),
                      child: Column(

                        children: [
                          Container(
                            width: 187,
                            height: 150,
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 8, right:8,top: 8),
                                child: Text(
                                  'How to stay healthy',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8,right: 9,bottom: 11),
                                child: Row(
                                  children: [
                                    Image(

                                      image: AssetImage('assets/images/clock.png'),width: 19,height: 19,),

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
                          )

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//bottom app bar
// Widget bottomNotchedAppBar() {
//   return BottomAppBar(
//     color: Colors.white,
//     shape: const CircularNotchedRectangle(),
//     notchMargin: 5.0,
//     clipBehavior: Clip.antiAliasWithSaveLayer,
//     child: Container(
//       height: 35,
//       margin: const EdgeInsets.symmetric(vertical: 10),
//       child: Row(
//         children: [
//           Expanded(
//             flex: 3,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Obx(
//                       () => InkWell(
//                     onTap: () =>
//                     bottomNavigationController.selectedIndex.value = 0,
//                     child: Icon(
//                       Icons.home_outlined,
//                       size: 40,
//                       color:
//                       (bottomNavigationController.selectedIndex.value == 0)
//                           ? Color(0xff0ae7da)
//                           : Color(0xffc5c5c5),
//                       // color: (GlobalVariables.selectedIndex.value == 0)
//                       //     ? Get.theme.primaryColor
//                       //     : const Color(0xff9B9B9B),
//                     ),
//                   ),
//                 ),
//                 Obx(
//                       () => InkWell(
//                     onTap: () =>
//                     bottomNavigationController.selectedIndex.value = 1,
//                     child: Icon(
//                       Icons.search,
//                       size: 40,
//                       color:
//                       (bottomNavigationController.selectedIndex.value == 1)
//                           ? Color(0xff0ae7da)
//                           : Color(0xffc5c5c5),
//                       // color: (GlobalVariables.selectedIndex.value == 1)
//                       //     ? Get.theme.primaryColor
//                       //     : const Color(0xff9B9B9B),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//           Expanded(
//             flex: 1,
//             child: Container(
//               height: 0,
//             ),
//           ),
//           Expanded(
//             flex: 3,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Obx(
//                       () => InkWell(
//                     onTap: () =>
//                     bottomNavigationController.selectedIndex.value = 2,
//                     child: Icon(
//                       Icons.add_circle_outline,
//                       size: 40,
//                       color:
//                       (bottomNavigationController.selectedIndex.value == 2)
//                           ? Color(0xff0ae7da)
//                           : Color(0xffc5c5c5),
//                       // color: (GlobalVariables.selectedIndex.value == 3)
//                       //     ? Get.theme.primaryColor
//                       //     : const Color(0xff9B9B9B),
//                     ),
//                   ),
//                 ),
//                 Obx(
//                       () => InkWell(
//                     onTap: () =>
//                     bottomNavigationController.selectedIndex.value = 3,
//                     child: Icon(
//                       Icons.add_alert,
//
//                       size: 40,
//                       color:
//                       (bottomNavigationController.selectedIndex.value == 3)
//                           ? Color(0xff0ae7da)
//                           : Color(0xffc5c5c5),
//                       // color: (GlobalVariables.selectedIndex.value == 3)
//                       //     ? Get.theme.primaryColor
//                       //     : const Color(0xff9B9B9B),
//                     ),
//                   ),
//                 ),
//
//               ],
//             ),
//           )
//         ],
//       ),
//     ),
//   );
// }
