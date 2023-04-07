import 'package:flutter/material.dart';
import 'package:subz/widgets/CardDetailsButton.dart';
import 'package:subz/widgets/CardInputField.dart';
import 'package:subz/widgets/MyButtons.dart';

import '../widgets/bottomNevigation.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff0c5fe01),
      body: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background1.png'),
              alignment: Alignment.topCenter),
        ),
        child: Column(
          children: [
            SizedBox(
              height: height * .06,
            ),
            SizedBox(
              width: width * 0.9,
              child: Text(
                'CARD DETAILS',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: width * .1,
            ),
            CardDetailsButton(
              image: 'assets/images/paypal.png',
              title: '**** **** **** 1234',
            ),
            SizedBox(
              height: width * .05,
            ),
            CardDetailsButton(
              image: 'assets/images/stripe.png',
              title: '**** **** **** 1234',
            ),
            SizedBox(
              height: width * 0.1,
            ),
            Container(
              width: width * .9,
              alignment: Alignment.centerLeft,
              child: Container(
                alignment: Alignment.center,
                height: width * .1,
                width: width * .3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Color(0xff5b7011),
                ),
                child: Text(
                  'Add New Card ',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: width * 0.08,
            ),
            CardInputField(title: 'Card Number'),
            SizedBox(
              height: width * .05,
            ),
            Container(
              width: width * .9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: width * .425,
                    child: CardInputField(title: 'Exp Month'),
                  ),
                  SizedBox(
                    width: width * 0.05,
                  ),
                  Container(
                    width: width * .425,
                    child: CardInputField(title: 'Exp Year'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: width * .05,
            ),
            CardInputField(title: 'CVV'),
            SizedBox(
              height: width * .08,
            ),
            Container(
                width: width * .9,
                child: MyButtons(BtnText: 'Add Card', BtnLink: () {}))
          ],
        ),
      ),
      bottomNavigationBar: MyBottomNevigation(),
    );
  }
}
