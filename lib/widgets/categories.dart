import 'package:flutter/material.dart';

class MyCategories extends StatelessWidget {
  String image;
  VoidCallback url;
  String title;

  MyCategories(
      {super.key, required this.image, required this.title, required this.url});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: url,
      child: Padding(
        padding: EdgeInsets.all(width * .015),
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(
              horizontal: width * .04, vertical: width * .02),
          width: width * .36,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Color(0xff647b11),
          ),
          child: Row(
            children: [
              Image.asset(
                image,
                width: width * .05,
              ),
              SizedBox(
                width: width * .02,
              ),
              Text(
                title,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
