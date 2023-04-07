import 'package:flutter/material.dart';

class OTPinput extends StatelessWidget {
  const OTPinput({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: width * .1,
            child: TextFormField(
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                }
              },
              maxLength: 1,
              decoration: InputDecoration(
                hintText: '*',
                filled: true,
                fillColor: Colors.white,
                border: InputBorder.none,
                counterText: '',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
