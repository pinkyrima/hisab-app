import 'dart:async';

import 'package:flutter/material.dart';

import 'onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => OnBoardingScreen())));
  }
  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    print(_height);
    print(_width);
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 75.0),
      child: Center(
          child: Image.asset(
        'assets/images/logo.png',
        height: _height / 14.24,
        fit: BoxFit.contain,
      )),
    ));
  }
}
