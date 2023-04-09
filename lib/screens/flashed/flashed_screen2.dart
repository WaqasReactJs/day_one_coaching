import 'package:flutter/material.dart';


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(

        children: [
          Container(
            height: 50,
            color: Colors.red,
          ),
          Positioned(
            top: 50,
            child: Container(
              height: 113,
              width: MediaQuery.of(context).size.width,
              color: Colors.blue,
            ),
          ),
          Positioned(
            top: 163,
            child: Container(
              height: 75,
              width: MediaQuery.of(context).size.width,
              color: Colors.green,
            ),
          ),
          Positioned(
            top: 238,
            child: Container(
              height: 114,
              width: MediaQuery.of(context).size.width,
              color: Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }
}
