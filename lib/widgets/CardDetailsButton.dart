import 'package:flutter/material.dart';

class CardDetailsButton extends StatefulWidget {
  String image;
  String title;
  // VoidCallback btnLink;
  CardDetailsButton({
    super.key,
    required this.image,
    required this.title,
    // required this.btnLink,
  });

  @override
  State<CardDetailsButton> createState() => _CardDetailsButtonState();
}

class _CardDetailsButtonState extends State<CardDetailsButton> {
  bool Selected = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        setState(() {
          Selected = !Selected;
        });
      },
      child: Container(
        height: width * .15,
        padding: EdgeInsets.symmetric(horizontal: width * .06),
        width: width * 0.9,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Color.fromARGB(117, 124, 124, 124),
              blurRadius: 5,
              offset: Offset(0, 2),
              spreadRadius: 0),
        ], color: Colors.white, borderRadius: BorderRadius.circular(16)),
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                widget.image,
                width: width * .12,
              ),
              SizedBox(
                width: width * .055,
              ),
              Text(
                widget.title,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w500),
              ),
              Spacer(),
              if (Selected)
                Image.asset(
                  'assets/images/Check.png',
                  width: width * .06,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
