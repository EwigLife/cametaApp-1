import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'Home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();

    Timer(
        Duration(seconds: 4),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => AddImage())));
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 80, left: 80, bottom: 10),
            child: Image.asset("images/LogoCameraApp.jpg"),
          ),
          // Text(
          //   "Cameta",
          //   style: TextStyle(
          //       fontSize: 46,
          //       fontWeight: FontWeight.w900,
          //       foreground: Paint()
          //         ..style = PaintingStyle.stroke
          //         ..strokeWidth = 2
          //         ..color = Colors.pink[500]),
          // )
          SizedBox(
            width: 250.0,
            child: ColorizeAnimatedTextKit(
              onTap: () {
                print("Tap Event");
              },
              text: [
                "Cameta",
              ],
              textStyle: TextStyle(
                  fontSize: 50.0,
                  fontFamily: "Horizon",
                  fontWeight: FontWeight.bold),
              colors: [
                Colors.purple,
                Colors.blue,
                Colors.yellow,
                Colors.red,
              ],
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
