import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:subz/utils/routes.dart';
import '../widgets/buttons.dart';

class PreLogins extends StatelessWidget {
  const PreLogins({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Material(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffc5fe01),
          image: DecorationImage(
              image: AssetImage('assets/images/Mask-Group 4.png'),
              fit: BoxFit.scaleDown,
              alignment: Alignment.topCenter),
        ),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.06,
            ),
            Text(
              'PRE LOGIN',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w600),
            ),
            Image.asset(
              'assets/images/subzlogo.png',
              width: width * .4,
              height: height * .35,
            ),
            MyButton(
              BtnLink: () {
                Navigator.pushNamed(context, MyRoutes.LoginScreen);
              },
              BtnText: 'Login with Email',
              BtnColor: Colors.white,
              BtnTextColor: Color(0xff000000),
              Btnicon: 'assets/images/email.png',
            ),
            SizedBox(
              height: height * 0.035,
            ),
            MyButton(
              BtnLink: () {},
              BtnText: 'Login with Facebook',
              Btnicon: 'assets/images/facebook.png',
              BtnColor: Color(0xff13bcff),
              BtnTextColor: Colors.white,
            ),
            SizedBox(
              height: height * 0.035,
            ),
            MyButton(
              BtnLink: () {},
              BtnText: 'Login with Google',
              Btnicon: 'assets/images/google.png',
              BtnColor: Color(0xffea4235),
              BtnTextColor: Colors.white,
            ),
            SizedBox(
              height: height * 0.035,
            ),
            MyButton(
              BtnLink: () {},
              BtnText: 'Login with Apple',
              Btnicon: 'assets/images/apple.png',
              BtnColor: Color(0xff000000),
              BtnTextColor: Colors.white,
            ),
            Spacer(),
            RichText(
                text: TextSpan(
                    text: 'Don\'t have an account?',
                    style: TextStyle(color: Color(0xff031101), fontSize: 14),
                    children: <TextSpan>[
                  TextSpan(
                      text: ' Sign Up Today',
                      style: TextStyle(
                          color: Color(0xff010b00),
                          fontWeight: FontWeight.bold),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pushNamed(context, MyRoutes.CreateAccount);
                        })
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
