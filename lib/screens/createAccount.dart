import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:subz/widgets/MyButtons.dart';
import 'package:subz/widgets/inputField.dart';
import 'package:firebase_core/firebase_core.dart';

class CreateAccount extends StatelessWidget {
  CreateAccount({super.key});

  // FirebaseAuth _auth = FirebaseAuth.instance;

  final emailconroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Color(0xffc5fe01),
          image: DecorationImage(
              image: AssetImage('assets/images/Mask-Group 4.png'),
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter),
        ),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.06,
            ),
            Text(
              'CREATE ACCOUNT',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: width * 0.1,
            ),
            Container(
              height: width * .35,
              width: width * .35,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  'assets/images/circle.png',
                ),
                fit: BoxFit.cover,
              )),
              child: SizedBox(
                  child: Image.asset(
                'assets/images/metro-camera.png',
                scale: 4,
              )),
            ),
            SizedBox(
              height: width * 0.1,
            ),
            SizedBox(
              width: width * .8,
              height: height * .5,
              child: ListView(
                padding: EdgeInsets.all(0),
                children: [
                  MyInputField(
                      FieldIcon: 'assets/images/user.png',
                      Textlabel: 'User Name'),
                  SizedBox(
                    height: width * 0.05,
                  ),
                  MyInputField(
                    inputController: emailconroller,
                    FieldIcon: 'assets/images/email.png',
                    Textlabel: 'Email Address',
                  ),
                  SizedBox(
                    height: width * 0.05,
                  ),
                  MyInputField(
                    inputController: passwordcontroller,
                    FieldIcon: 'assets/images/icon-lock.png',
                    Textlabel: 'Password',
                    obsecText: true,
                    sufixIocn: Icon(
                      Icons.remove_red_eye,
                      color: Color(0xffb1b1b1),
                    ),
                  ),
                  SizedBox(
                    height: width * 0.05,
                  ),
                  MyInputField(
                    FieldIcon: 'assets/images/icon-lock.png',
                    Textlabel: 'Confirm Password',
                    obsecText: true,
                    sufixIocn: Icon(
                      Icons.remove_red_eye,
                      color: Color(0xffb1b1b1),
                    ),
                  ),
                  SizedBox(
                    height: width * 0.05,
                  ),
                  MyInputField(
                      FieldIcon: 'assets/images/material-call.png',
                      Textlabel: 'Phone Number'),
                  SizedBox(
                    height: width * 0.05,
                  ),
                  MyInputField(
                      FieldIcon: 'assets/images/material-location-on.png',
                      Textlabel: 'Address',
                      closekeyboard: true),
                  // TextFormField(
                  //   controller: emailconroller,
                  //   decoration: InputDecoration(label: Text('Name')),
                  // ),
                  // TextFormField(
                  //   controller: passwordcontroller,
                  //   decoration: InputDecoration(label: Text('pass')),
                  // ),
                  SizedBox(
                    height: width * 0.05,
                  ),
                ],
              ),
            ),
            Spacer(),
            MyButtons(
                BtnText: 'Create',
                BtnLink: () {
                  FirebaseAuth.instance.createUserWithEmailAndPassword(
                      email: emailconroller.text.toString(),
                      password: passwordcontroller.text.toString());
                }),
            SizedBox(height: width * 0.1),
          ],
        ),
      ),
    );
  }
}
