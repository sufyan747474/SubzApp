import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:subz/widgets/MyButtons.dart';

import '../utils/routes.dart';

class UploadVideo extends StatelessWidget {
  const UploadVideo({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return AlertDialog(
      backgroundColor: Colors.transparent,
      title: Stack(
        alignment: Alignment.centerRight,
        children: [
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: Color(0xffc5fe01),
            ),
            height: width * .13,
            child: Text(
              'VIDEO',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset(
                    'assets/images/close.png',
                    width: width * .04,
                    alignment: Alignment.center,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      titlePadding: EdgeInsets.zero,
      content: Container(
        padding: EdgeInsets.symmetric(
            horizontal: width * .03, vertical: width * .08),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DottedBorder(
              radius: Radius.circular(16),
              borderType: BorderType.RRect,
              strokeCap: StrokeCap.butt,
              color: Color(0xffc9c9c9),
              dashPattern: [Checkbox.width],
              child: Container(
                height: width * .4,
                width: width * .8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/uploadvideo.png',
                      scale: 3,
                    ),
                    SizedBox(
                      height: width * .02,
                    ),
                    Text(
                      'Upload Video',
                      style: TextStyle(color: Color(0xffc9c9c9), fontSize: 18),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: width * .05,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: width * .05),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffdfdfdf).withOpacity(0.9),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 4), // changes position of shadow
                  ),
                ],
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter video title',
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    color: Color(0xffa3a3a3),
                  ),
                ),
                style: TextStyle(
                  color: Color(0xffa3a3a3),
                ),
              ),
            ),
            SizedBox(
              height: width * 0.05,
            ),
            MyButtons(
                BtnText: 'Add Video',
                BtnLink: () {
                  Navigator.pop(context);
                  // showDialog(
                  //   context: context,
                  //   builder: (context) {
                  //     return Earncoins();
                  //   },
                  // );
                }),
          ],
        ),
      ),
      contentPadding: EdgeInsets.zero,
    );
  }
}
