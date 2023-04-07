import 'dart:async';

import 'package:flutter/material.dart';
import 'package:subz/screens/preLogins.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => PreLogins()));
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/backgroungApp.png'),
            fit: BoxFit.cover),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/subzlogo.png',
              width: width * .4,
              height: height * .4,
            )
          ],
        ),
      ),
    );
  }
}
