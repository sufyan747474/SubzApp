import 'package:flutter/material.dart';
import 'package:subz/popups/thankYou.dart';
import 'package:subz/utils/routes.dart';
import 'package:subz/widgets/MyButtons.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffc5fe01),
      body: Container(
        height: height,
        width: width * width,
        decoration: BoxDecoration(
          color: Color(0xffc5fe01),
          image: DecorationImage(
              image: AssetImage('assets/images/background1.png'),
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter),
        ),
        child: Column(
          children: [
            SizedBox(
              height: height * .06,
            ),
            Text(
              'CHECKOUT',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: width * .1,
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: width * .04, horizontal: width * .02),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(117, 124, 124, 124),
                      blurRadius: 5,
                      offset: Offset(0, 2),
                      spreadRadius: 0),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              width: width * .9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/bags.png',
                    scale: 5,
                  ),
                  SizedBox(
                    width: width * .05,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Product Name',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      SizedBox(
                        height: width * .02,
                      ),
                      Text(
                        "Quantity: 02",
                        style: TextStyle(color: Color(0xffb2b2b2)),
                      ),
                      SizedBox(
                        height: width * .02,
                      ),
                      Text(
                        '\$40',
                        style: TextStyle(
                            color: Color(0xff7ca000),
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: width * .18,
                  ),
                  Image.asset(
                    'assets/images/Icon-delete.png',
                    scale: 2.5,
                  )
                ],
              ),
            ),
            SizedBox(
              height: width * .05,
            ),
            SizedBox(
              height: height * .68,
              child: SingleChildScrollView(
                padding: EdgeInsets.all(0),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: width * .04, horizontal: width * .06),
                      width: width * .9,
                      height: width * .42,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(117, 124, 124, 124),
                              blurRadius: 5,
                              offset: Offset(0, 2),
                              spreadRadius: 0),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Sipping Address',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              ),
                              Container(
                                width: width * .07,
                                height: width * .07,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Color(0xff82d231),
                                ),
                                child: Icon(
                                  size: 18,
                                  Icons.edit,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          Divider(
                            color: Color(0xffcbcbcb),
                            thickness: 1.5,
                            height: 25,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Jerry Wells',
                                style: TextStyle(
                                  color: Color(0xff757575),
                                  fontSize: 17,
                                ),
                              ),
                              SizedBox(
                                height: width * .02,
                              ),
                              Text(
                                '531 Pittson Ave, Scranton, PA 18505,',
                                style: TextStyle(
                                  color: Color(0xffbebebe),
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: width * .02,
                              ),
                              Text(
                                'United State',
                                style: TextStyle(
                                  color: Color(0xffbebebe),
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: width * 0.05,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: width * .04, horizontal: width * .06),
                      width: width * .9,
                      height: width * .32,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(117, 124, 124, 124),
                              blurRadius: 5,
                              offset: Offset(0, 2),
                              spreadRadius: 0),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Payment Method',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              ),
                              Container(
                                width: width * .07,
                                height: width * .07,
                                decoration: BoxDecoration(
                                  boxShadow: [],
                                  borderRadius: BorderRadius.circular(6),
                                  color: Color(0xff82d231),
                                ),
                                child: Icon(
                                  size: 18,
                                  Icons.edit,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          Divider(
                            color: Color(0xffcbcbcb),
                            thickness: 1.5,
                            height: 25,
                          ),
                          SizedBox(
                            height: width * .03,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/paypal.png',
                                scale: 3,
                              ),
                              SizedBox(
                                width: width * .1,
                              ),
                              Text(
                                '**** **** **** 1234',
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: width * 0.05,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: width * .04, horizontal: width * .06),
                      width: width * .9,
                      height: width * .5,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(117, 124, 124, 124),
                              blurRadius: 5,
                              offset: Offset(0, 2),
                              spreadRadius: 0),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Amount',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                              ),
                            ],
                          ),
                          Divider(
                            color: Color(0xffcbcbcb),
                            thickness: 1.5,
                            height: 25,
                          ),
                          SizedBox(
                            height: width * .01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Services Cost',
                                style: TextStyle(
                                  color: Color(0xff757575),
                                  fontSize: 17,
                                ),
                              ),
                              Text(
                                '\$40.00',
                                style: TextStyle(
                                  color: Color(0xff757575),
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: width * .05,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Tax & Fee',
                                style: TextStyle(
                                  color: Color(0xff757575),
                                  fontSize: 17,
                                ),
                              ),
                              Text(
                                'Free',
                                style: TextStyle(
                                  color: Color(0xff757575),
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            color: Color(0xffcbcbcb),
                            thickness: 1.5,
                            height: 25,
                          ),
                          SizedBox(
                            height: width * .01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total Amount',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                ),
                              ),
                              Text(
                                '\$40.00',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: width * .07,
                    ),
                    MyButtons(
                        BtnText: "Confirm & pay",
                        BtnLink: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return ThankYou();
                              });
                        }),
                    SizedBox(
                      height: width * .03,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
