import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:subz/utils/routes.dart';
import 'package:subz/widgets/OPTInput.dart';
import '../widgets/buttons.dart';

class OTPverification extends StatefulWidget {
  const OTPverification({super.key});

  @override
  State<OTPverification> createState() => _OTPverificationState();
}

class _OTPverificationState extends State<OTPverification> {
  late Timer timer;

  var seconds = 60;

  void startTimer() {
    seconds = 60;
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (seconds > 0) {
        setState(() {
          seconds -= 1;
        });
      }
    });
  }

  void endTimer() {
    seconds = 60;
    timer.cancel();
  }

  @override
  void dispose() {
    endTimer();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    startTimer();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Material(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffc5fe01),
          image: DecorationImage(
              image: AssetImage(
                'assets/images/Mask-Group 4.png',
              ),
              fit: BoxFit.scaleDown,
              alignment: Alignment.topCenter),
        ),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.06,
            ),
            Text(
              'VERIFICATION',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w600),
            ),
            Image.asset(
              'assets/images/subzlogo.png',
              width: width * .35,
              height: width * .6,
            ),
            SizedBox(
              width: width * .8,
              child: Text(
                'We have sent an email containing VERIFICATION CODE and instructions. please follow the instrctions to verify your email address',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: width * .05,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OTPinput(),
                OTPinput(),
                OTPinput(),
                OTPinput(),
                OTPinput(),
                OTPinput(),
              ],
            ),
            SizedBox(
              height: height * .05,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: width * .32,
                  height: width * .32,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color(0xff7ca000),
                  ),
                  child: Center(
                      child: Text(
                    "00:$seconds",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w500),
                  )),
                ),
                SizedBox(
                    width: width * .25,
                    height: width * .25,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                      value: seconds / 60,
                    )),
              ],
            ),
            Spacer(),
            RichText(
                text: TextSpan(
                    text: 'Don\'t received code?',
                    style: TextStyle(color: Color(0xff031101), fontSize: 14),
                    children: <TextSpan>[
                  TextSpan(
                    text: ' Resend',
                    style: TextStyle(
                        color: Color(0xff010b00), fontWeight: FontWeight.bold),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushNamed(context, MyRoutes.CreateAccount);
                      },
                  )
                ])),
            SizedBox(
              height: height * .04,
            )
          ],
        ),
      ),
    );
  }
}
