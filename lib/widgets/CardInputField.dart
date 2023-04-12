import 'package:flutter/material.dart';

class CardInputField extends StatelessWidget {
  String title;
  CardInputField({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width * .9,
      padding: EdgeInsets.symmetric(horizontal: width * .06),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Color.fromARGB(117, 124, 124, 124),
            blurRadius: 5,
            offset: Offset(0, 2),
            spreadRadius: 0),
      ], color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: TextFormField(
        cursorColor: Color(0xff000000),
        decoration: InputDecoration(
          labelStyle: TextStyle(color: Color(0xffb1b1b1), fontSize: 18),
          border: InputBorder.none,
          label: Text(
            title,
          ),
        ),
      ),
    );
  }
}
