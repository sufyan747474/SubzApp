import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String Btnicon;
  String BtnText;
  VoidCallback BtnLink;
  Color BtnColor;
  Color BtnTextColor;

  MyButton({
    super.key,
    this.BtnColor = Colors.white,
    required this.BtnLink,
    required this.BtnText,
    required this.Btnicon,
    this.BtnTextColor = const Color(0xff0b0b0b),
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: BtnLink,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 1),
        width: width * 0.8,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Color.fromARGB(117, 124, 124, 124),
              blurRadius: 5,
              offset: Offset(0, 2),
              spreadRadius: 0),
        ], color: BtnColor, borderRadius: BorderRadius.circular(16)),
        child: Row(
          children: [
            SizedBox(
              width: width * .15,
            ),
            Image.asset(
              Btnicon,
              width: width * .07,
              height: height * .07,
            ),
            SizedBox(
              width: width * .06,
            ),
            Text(
              BtnText,
              style: TextStyle(
                  color: BtnTextColor,
                  fontSize: 17,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
