import 'package:flutter/material.dart';

class ThankYou extends StatelessWidget {
  const ThankYou({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      child: AlertDialog(
        backgroundColor: Colors.transparent,
        title: Container(
          width: width * .9,
          height: width * .65,
          padding: EdgeInsets.symmetric(
              horizontal: width * .05, vertical: width * .05),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    child: Image.asset(
                      'assets/images/icon-close.png',
                      scale: 4,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: width * .05,
              ),
              Image.asset(
                'assets/images/check-circle.png',
                scale: 4,
              ),
              SizedBox(
                height: width * .05,
              ),
              Text(
                'Thank you',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              Text(
                'Your Order has been received',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: width * .05,
              ),
              Divider(
                height: 0,
                color: Color.fromARGB(255, 39, 37, 37),
              ),
            ],
          ),
        ),
        titlePadding: EdgeInsets.zero,
        content: Container(
          height: width * .35,
          margin: EdgeInsets.all(0),
          padding: EdgeInsets.symmetric(horizontal: width * .02, vertical: 0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: width * .7,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Order #',
                      style: TextStyle(
                        color: Color(0xff747474),
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      '35655896',
                      style: TextStyle(
                        color: Color(0xff747474),
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: width * .03,
              ),
              SizedBox(
                width: width * .7,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Delivery Date',
                      style: TextStyle(
                        color: Color(0xff747474),
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      '12-14 April',
                      style: TextStyle(
                        color: Color(0xff747474),
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: width * 0.05,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * .01),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        width: width * .35,
                        height: width * .13,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                          ),
                        ),
                        child: Text(
                          'View Order',
                          style: TextStyle(
                            color: Color(0xffc6f629),
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        width: width * .35,
                        height: width * .13,
                        decoration: BoxDecoration(
                          color: Color(0xff7ca000),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                        ),
                        child: Text(
                          'Continue Shopping',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        contentPadding: EdgeInsets.zero,
      ),
    );
  }
}
