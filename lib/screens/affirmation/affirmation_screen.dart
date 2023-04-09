import 'package:flutter/material.dart';

import 'affirmation_determination.dart';

class AffirmationScreen extends StatefulWidget {
  const AffirmationScreen({Key? key}) : super(key: key);

  @override
  State<AffirmationScreen> createState() => _AffirmationScreenState();
}

class _AffirmationScreenState extends State<AffirmationScreen> {
  String? _selectedItem;

  List<String> _items = [
    'Select Affirmation Topic',
    'Option 2',
    'Option 3',
    'Option 4'
  ];

  @override
  void initState() {
    super.initState();
    _selectedItem = _items[0];
  }

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
        padding: EdgeInsets.only(left: 24, right: 24, top: 24),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 125,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xffF69A7B),
                        Color(0xffF15B2A),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/board.png',
                          width: 18, height: 18),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Text',
                        style: TextStyle(color: Color(0xffffffff)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Container(
                  height: 40,
                  width: 125,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xffEDEEF1FF),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/voice.png',
                          width: 18, height: 18),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Voice'),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Select Affirmation Topic",
              style: TextStyle(
                  color: Color(0xff1d1617),
                  fontWeight: FontWeight.w600,
                  fontSize: 14),
            ),
            SizedBox(
              height: 14,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(
                  color: Colors.grey.withOpacity(0.1),
                  width: 1.0,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                  value: _selectedItem,
                  items: _items.map((item) {
                    return DropdownMenuItem(
                      value: item,
                      child: Text(
                        item,
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 12),
                      ),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedItem = value;
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 157,
                  height: 144,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                      gradient: LinearGradient(
                        colors: [Color(0xffFFC5B2), Color(0xffFCD3C4)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage("assets/images/affirmation1.png"),
                          height: 68,
                          width: 54,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "Belief",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "5 Quotes",
                          style: TextStyle(
                              color: Color(0xff7B6F72),
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return AffirmationDetermination();
                    }));
                  },
                  child: Container(
                    width: 157,
                    height: 144,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                        gradient: LinearGradient(
                          colors: [Color(0xffFFC5B2), Color(0xffFCD3C4)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage("assets/images/affirmation2.png"),
                            height: 68,
                            width: 54,
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            "Determination",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "5 Quotes",
                            style: TextStyle(
                                color: Color(0xff7B6F72),
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 17,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 157,
                  height: 144,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                      gradient: LinearGradient(
                        colors: [Color(0xffFFC5B2), Color(0xffFCD3C4)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/affirmation3.png"),
                          height: 68,
                          width: 54,
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "Confidenece",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "5 Quotes",
                          style: TextStyle(
                              color: Color(0xff7B6F72),
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 157,
                  height: 144,
                  child: Center(
                    child: Container(
                      height: 65,
                      width: 65,
                      child: Icon(
                        Icons.add,
                        color: Color(0xffffffff),
                      ),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(50),
                        gradient: LinearGradient(
                          colors: [Color(0xffF15B2A), Color(0xffF69A7B)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            //custom dropdownform widget
          ],
        ),
      ),
    );
  }
}

// Expanded(
// child: GridView.builder(
// gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// crossAxisCount: 2,
// mainAxisSpacing: 14,
// crossAxisSpacing: 14,
// ),
// itemBuilder: (BuildContext context, int index) {
// return             Container(
// width: 157,
// height: 144,
// decoration: BoxDecoration(
// boxShadow: [
// BoxShadow(
// color: Colors.grey.withOpacity(0.5),
// spreadRadius: 2,
// blurRadius: 5,
// offset: Offset(0, 3),
// ),
// ],
// gradient: LinearGradient(
// colors: [ Color(0xffFFC5B2),Color(0xffFCD3C4)],
// begin: Alignment.topLeft,
// end: Alignment.bottomRight,
// ),
// borderRadius: BorderRadius.circular(5)),
// child: Padding(
// padding: EdgeInsets.all(12),
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Image(
// image: AssetImage("assets/images/girl3.png"),
// height: 68,
// width: 54,
// ),
// Text(
// "Health",
// style: TextStyle(
// fontSize: 14, fontWeight: FontWeight.w500),
// ),
// Text(
// "5 Quotes",
// style: TextStyle(
// color: Color(0xff7B6F72),
// fontSize: 12,
// fontWeight: FontWeight.w400),
// ),
// ],
// ),
// ),
// );
//
// },
// itemCount: 3,
// ),
// )
