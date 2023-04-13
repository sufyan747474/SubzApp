import 'package:flutter/material.dart';
import '../popups/SelectSection.dart';
import '../popups/YourPoints.dart';

class AppHeader extends StatelessWidget {
  AppHeader(
      {super.key,
      required this.PageTitel,
      this.Points = false,
      this.SubSet = false});

  String PageTitel;
  bool SubSet;
  bool Points;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width * 0.9,
      child: Stack(
        alignment: Alignment.center,
        children: [
          if (SubSet == true)
            Align(
              alignment: Alignment.topLeft,
              child: InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return SelectSection();
                    },
                  );
                },
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
            ),
          Text(
            PageTitel,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600),
          ),
          if (Points == true)
            Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return YourPoints();
                        });
                  },
                  child: Container(
                    child: Image.asset(
                      'assets/images/starimg.png',
                      width: width * .07,
                    ),
                  ),
                )),
        ],
      ),
    );
  }
}
