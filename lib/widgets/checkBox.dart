import 'package:flutter/material.dart';

class MyCheckBox extends StatefulWidget {
  String text;
  VoidCallback url;

  MyCheckBox({super.key, required this.text, required this.url});

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: width * .05,
          child: Checkbox(
            materialTapTargetSize: MaterialTapTargetSize.padded,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(4))),
            fillColor: MaterialStatePropertyAll(Color(
              0xff7d9d0d,
            )),
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
        ),
        SizedBox(
          width: width * .04,
        ),
        InkWell(
          onTap: widget.url,
          child: Text(
            widget.text,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        )
      ],
    );
  }
}
