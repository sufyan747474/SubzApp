import 'dart:io';

import 'package:flutter/material.dart';

class MyInputField extends StatefulWidget {
  String Textlabel;
  String FieldIcon;
  bool obsecText;
  Icon? sufixIocn;
  String? Function(String?)? validator;

  MyInputField(
      {super.key,
      required this.FieldIcon,
      required this.Textlabel,
      this.obsecText = false,
      this.validator,
      this.sufixIocn});

  @override
  State<MyInputField> createState() => _MyInputFieldState();
}

class _MyInputFieldState extends State<MyInputField> {
  bool isvisible = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width * .8,
      padding: EdgeInsets.symmetric(vertical: 1),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: widget.validator,
        obscureText: isvisible,
        style: TextStyle(color: Color(0xff000000)),
        cursorColor: Color(0xff000000),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            border: InputBorder.none,
            prefixIcon: SizedBox(
              child: Image.asset(
                widget.FieldIcon,
                scale: 4,
              ),
            ),
            prefixIconConstraints: BoxConstraints.tight(Size(60, 50)),
            labelText: widget.Textlabel,
            suffixIconColor: Color(0xffb1b1b1),
            suffixIcon: widget.obsecText
                ? InkWell(
                    child: isvisible
                        ? Icon(Icons.visibility)
                        : Icon(Icons.visibility_off),
                    onTap: () {
                      if (widget.sufixIocn != null) {
                        setState(() {});

                        isvisible = !isvisible;
                      }
                    },
                  )
                : SizedBox(),
            labelStyle: TextStyle(color: Color(0xffb1b1b1), fontSize: 18)),
      ),
    );
  }
}
