import 'package:flutter/material.dart';

class MyBottomNevigation extends StatelessWidget {
  const MyBottomNevigation({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(bottom: 15, left: 10, right: 10),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        height: width * 0.22,
        decoration: BoxDecoration(
          color: Color(0xff1c1c1c),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(18)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/feather-home.png',
                  width: width * .06,
                ),
                Spacer(),
                Text(
                  'Home',
                  style: TextStyle(color: Colors.white, fontSize: 13),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/feather-search.png',
                  width: width * .07,
                ),
                Spacer(),
                Text(
                  'Search',
                  style: TextStyle(color: Colors.white, fontSize: 13),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/feather-list.png',
                  width: width * .08,
                ),
                Spacer(),
                Text(
                  'Orders',
                  style: TextStyle(color: Colors.white, fontSize: 13),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/feather-user.png',
                  width: width * .06,
                ),
                Spacer(),
                Text(
                  'Profile',
                  style: TextStyle(color: Colors.white, fontSize: 13),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/feather-settings.png',
                  width: width * .07,
                ),
                Spacer(),
                Text(
                  'Settings',
                  style: TextStyle(color: Colors.white, fontSize: 13),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
