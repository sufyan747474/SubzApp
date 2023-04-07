import 'package:flutter/material.dart';
import 'package:subz/widgets/MyButtons.dart';
import 'package:subz/widgets/bottomNevigation.dart';
import 'package:subz/widgets/inputField.dart';

class EditProfile extends StatelessWidget {
  EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Color(0xff0c5fe01),
        body: Container(
          width: width * 1,
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
                      'EDIT PROFILE',
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
                height: width * .08,
              ),
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    width: width * .35,
                    height: width * .35,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xff354d1d),
                        width: width * .02,
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Container(
                      width: width * .32,
                      height: width * .32,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xff0c5fe01),
                          width: width * .005,
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Image.asset(
                        'assets/images/ProfilePic.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: width * .1,
                    height: width * .1,
                    decoration: BoxDecoration(
                      color: Color(0xff0c5fe01),
                      border: Border.all(
                        color: Colors.black,
                        width: width * .004,
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Image.asset(
                      'assets/images/metro-camera.png',
                      scale: 6,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: width * .05,
              ),
              SizedBox(
                width: width * 0.9,
                height: width * .9,
                child: ListView(
                  shrinkWrap: true,
                  padding: EdgeInsets.all(0),
                  children: [
                    Text(
                      'John Smith',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 19),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: width * .03,
                    ),
                    Text(
                      'John.Smith@domain.com',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: width * .03,
                    ),
                    MyInputField(
                        FieldIcon: 'assets/images/user.png',
                        Textlabel: 'User Name'),
                    SizedBox(
                      height: width * .05,
                    ),
                    MyInputField(
                        FieldIcon: 'assets/images/email.png',
                        Textlabel: 'Email Address'),
                    SizedBox(
                      height: width * .05,
                    ),
                    MyInputField(
                        FieldIcon: 'assets/images/material-call.png',
                        Textlabel: 'Phone Number'),
                    SizedBox(
                      height: width * .05,
                    ),
                    MyInputField(
                        FieldIcon: 'assets/images/material-location-on.png',
                        Textlabel: 'Address'),
                  ],
                ),
              ),
              SizedBox(
                height: width * .05,
              ),
              Spacer(),
              MyButtons(BtnText: "Save", BtnLink: () {}),
              SizedBox(
                height: width * .1,
              ),
            ],
          ),
        ),
        bottomNavigationBar: MyBottomNevigation());
  }
}
