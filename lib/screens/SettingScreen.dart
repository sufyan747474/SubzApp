import 'package:flutter/material.dart';
import 'package:subz/utils/routes.dart';
import 'package:subz/widgets/MyButtons.dart';
import 'package:subz/widgets/SettingButtons.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff0c5fe01),
      body: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background1.png'),
              alignment: Alignment.topCenter),
        ),
        child: Column(
          children: [
            SizedBox(
              height: height * .06,
            ),
            SizedBox(
              width: width * 0.9,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: height * .045,
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      width: width * .27,
                      decoration: BoxDecoration(
                          color: Color(0xff0c5fe01),
                          borderRadius: BorderRadius.circular(8)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Sub Store',
                          ),
                          SizedBox(
                            width: width * .02,
                          ),
                          Image.asset(
                            'assets/images/arrow-alt-circle-down.png',
                            width: width * .04,
                          )
                        ],
                      ),
                    ),
                  ),
                  Text(
                    'SETTINGS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                  ),
                  Align(
                      alignment: Alignment.topRight,
                      child: Image.asset(
                        'assets/images/starimg.png',
                        width: width * .07,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: width * .1,
            ),
            SettingButons(
              image: 'assets/images/email.png',
              title: 'Receive Email',
              btnLink: () {},
              haveSwitch: true,
            ),
            SizedBox(
              height: width * .05,
            ),
            SettingButons(
              image: 'assets/images/bell.png',
              title: 'Push Notification',
              btnLink: () {},
              haveSwitch: true,
            ),
            SizedBox(
              height: width * .05,
            ),
            SettingButons(
              image: 'assets/images/card.png',
              title: 'Card Details',
              btnLink: () {
                Navigator.pushNamed(context, MyRoutes.CardDetails);
              },
            ),
            SizedBox(
              height: width * .05,
            ),
            SettingButons(
              image: 'assets/images/papre.png',
              title: 'Terms and Conditions',
              btnLink: () {
                Navigator.pushNamed(context, MyRoutes.TermsConditions);
              },
            ),
            SizedBox(
              height: width * .05,
            ),
            SettingButons(
              image: 'assets/images/document.png',
              title: 'Privacy Policy',
              btnLink: () {
                Navigator.pushNamed(context, MyRoutes.PrivacyPolicy);
              },
            ),
            Spacer(),
            MyButtons(
              BtnLink: () {
                Navigator.pushNamed(context, MyRoutes.PreLogins);
              },
              BtnText: 'Logout',
            ),
            SizedBox(
              height: width * 0.1,
            )
          ],
        ),
      ),
      // bottomNavigationBar: MyBottomNevigation(),
    );
  }
}
