import 'package:flutter/material.dart';
import 'package:subz/widgets/MyButtons.dart';

import '../utils/routes.dart';

class Earncoins extends StatelessWidget {
  const Earncoins({super.key});

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
              'YOUR POINTS',
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
            Container(
              height: width * .25,
              width: width * .25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80),
                color: Color(0xff82d231),
              ),
              child: Image.asset(
                'assets/images/yourstar.png',
                scale: 3,
              ),
            ),
            SizedBox(
              height: width * .05,
            ),
            Text(
              '253',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: width * .01,
            ),
            Text(
              'Your Reward Points',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: width * .08,
            ),
            MyButtons(
                BtnText: 'Play Game',
                BtnLink: () {
                  // Navigator.pushNamed(context, MyRoutes.SearchScreen);
                }),
            SizedBox(
              height: width * 0.05,
            ),
            MyButtons(
              BtnText: 'Watch Videos',
              BtnLink: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, MyRoutes.WatchVideos);
              },
              BtnColor: Color(0xff7ca000),
              TextColor: Colors.white,
            ),
          ],
        ),
      ),
      contentPadding: EdgeInsets.zero,
    );
  }
}
