import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:subz/mainScreen1.dart';
import 'package:subz/screens/Terms&Conditions.dart';
import 'package:subz/screens/privacyPolicy.dart';
import 'package:subz/utils/routes.dart';
import 'package:subz/widgets/MyButtons.dart';
import 'package:subz/widgets/checkBox.dart';
import 'package:subz/widgets/inputField.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              'LOGIN',
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
            MyInputField(
                // validator: (value) {
                //   if (RegExp(
                //           r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                //       .hasMatch(value ?? '')) {
                //     return null;
                //   }

                //   return 'Invalid Email';
                // },
                FieldIcon: 'assets/images/email.png',
                Textlabel: 'Email Address'),
            SizedBox(
              height: height * 0.035,
            ),
            MyInputField(
              // validator: (value) {
              //   if (value == null || value.length < 6) {
              //     return 'Password Should be at least 8 digits';
              //   }
              //   return null;
              // },
              FieldIcon: 'assets/images/icon-lock.png',
              Textlabel: 'Password',
              obsecText: true, closekeyboard: true,
              sufixIocn: Icon(
                Icons.remove_red_eye,
                color: Color(0xffb1b1b1),
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.ChangePassword);
              },
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                    color: Color(0xff021600),
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            MyButtons(
                BtnText: 'Login',
                BtnLink: () {
                  // Navigator.pushNamed(context, MyRoutes.OTPverification);
                  showDialog(
                    context: context,
                    builder: (context) {
                      return pop();
                    },
                  );
                }),
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

class pop extends StatefulWidget {
  const pop({
    super.key,
  });

  @override
  State<pop> createState() => _popState();
}

class _popState extends State<pop> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return AlertDialog(
      backgroundColor: Colors.transparent,
      title: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          color: Color(0xffc5fe01),
        ),
        height: width * .13,
        child: Text(
          'AGREEMENT',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
      ),
      titlePadding: EdgeInsets.zero,
      content: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: width * 0.05,
            ),
            Text(
              'I have read and agreed with',
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(
              height: width * 0.05,
            ),
            MyCheckBox(
              text: 'Terms & Conditions',
              url: () {
                showDialog(
                  context: context,
                  builder: (context) => TermsConditions(),
                );
              },
            ),
            SizedBox(
              height: width * .02,
            ),
            MyCheckBox(
              text: 'Privacy Policy',
              url: () {
                showDialog(
                  context: context,
                  builder: (context) => PrivacyPolicy(),
                );
              },
            ),
            SizedBox(
              height: width * 0.05,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, MyRoutes.OTPverification);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: width * .3,
                    height: width * .13,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                      ),
                    ),
                    child: Text(
                      'Reject',
                      style: TextStyle(
                        color: Color(0xffc6f629),
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainScreen1(),
                        ));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: width * .3,
                    height: width * .13,
                    decoration: BoxDecoration(
                      color: Color(0xff7ca000),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    child: Text(
                      'Accept',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      contentPadding: EdgeInsets.zero,
    );
  }
}
