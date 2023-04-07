import 'package:flutter/material.dart';

class SettingButons extends StatefulWidget {
  String image;
  String title;
  bool haveSwitch;
  VoidCallback btnLink;
  SettingButons(
      {super.key,
      required this.image,
      required this.title,
      required this.btnLink,
      this.haveSwitch = false});

  @override
  State<SettingButons> createState() => _SettingButonsState();
}

class _SettingButonsState extends State<SettingButons> {
  bool light = true;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: widget.btnLink,
      child: Container(
        height: width * .16,
        padding: EdgeInsets.symmetric(
            vertical: height * 0.022, horizontal: width * .06),
        width: width * 0.8,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16)),
        child: Center(
          child: Row(
            children: [
              Image.asset(
                widget.image,
                width: width * .07,
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
              if (widget.haveSwitch)
                Switch.adaptive(
                  value: light,
                  inactiveTrackColor: Color(0xffc8c8c8),
                  activeColor: Color(0xff82d231),
                  onChanged: (bool value) {
                    setState(() {
                      light = value;
                    });
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }
}
