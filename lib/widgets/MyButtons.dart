import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  VoidCallback BtnLink;
  Color BtnColor;
  Color TextColor;
  String BtnText;

  MyButtons({
    super.key,
    required this.BtnText,
    required this.BtnLink,
    this.BtnColor = const Color(0xff000000),
    this.TextColor = const Color(0xffc5fe01),
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: BtnLink,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: height * 0.020),
        width: width * 0.8,
        decoration: BoxDecoration(
            color: BtnColor, borderRadius: BorderRadius.circular(16)),
        child: Center(
          child: Text(
            BtnText,
            style: TextStyle(
                color: TextColor, fontSize: 17, fontWeight: FontWeight.w900),
          ),
        ),
      ),
    );
  }
}
