import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/CardProduct.dart';

class CardProducts extends StatelessWidget {
  int index;

  CardProducts(this.index);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: width * .04),
          child: SizedBox(
            width: width * .9,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: width * .04),
              height: width * .26,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(16)),
              child: Row(
                children: [
                  Image.asset(
                    AllProducts[index].productImage,
                    width: width * .3,
                    height: height * .1,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AllProducts[index].ProductName,
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      SizedBox(
                        height: width * .02,
                      ),
                      Text(
                        AllProducts[index].productQty,
                        style: TextStyle(color: Color(0xffb2b2b2)),
                      ),
                      SizedBox(
                        height: width * .015,
                      ),
                      Text(
                        DateFormat.yMMMMd()
                            .format(AllProducts[index].ProductDate),
                        style: TextStyle(
                          color: Color(0xffb2b2b2),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: width * .7,
          child: Container(
            alignment: Alignment.center,
            height: width * .15,
            width: width * .15,
            decoration: BoxDecoration(
              color: Color(0xff7ca000),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
            ),
            child: Text(
              AllProducts[index].productPrice,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }
}
