import 'dart:async';

import 'package:flutter/material.dart';

import 'MainNavigation.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    startTime();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[800],
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 30.0),
                child: Text(
                  '@Copyright 2020. Food Delivery. ID Programming',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11.0
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/img/logo.png',
                width: 120.0,
                height: 120.0,
              ),
            ],
          ),
        ],
      ),
    );
  }

  startTime() async {
    var _duration = Duration(seconds: 3);
    return Timer(_duration, navigationPage);
  }

  navigationPage() {
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
      builder: (context) => MainNavigation(),
    ), (route) => false);
  }
}
