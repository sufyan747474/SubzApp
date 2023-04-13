import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:subz/utils/routes.dart';
import 'package:subz/widgets/MyButtons.dart';
import 'package:subz/widgets/inputField.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

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
              'CHANGE PASSWORD',
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
                FieldIcon: 'assets/images/icon-lock.png',
                Textlabel: 'New Password',
                obsecText: true,
                sufixIocn: Icon(
                  Icons.remove_red_eye,
                  color: Color(0xffb1b1b1),
                )),
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
              Textlabel: 'Confirm New Password',
              obsecText: true,
              closekeyboard: true,
              sufixIocn: Icon(
                Icons.remove_red_eye,
                color: Color(0xffb1b1b1),
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            MyButtons(BtnText: 'Change', BtnLink: () {}),
          ],
        ),
      ),
    );
  }
}
