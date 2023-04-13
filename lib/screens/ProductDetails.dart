import 'package:flutter/material.dart';
import 'package:subz/utils/routes.dart';
import 'package:subz/widgets/productQuantity.dart';

import '../widgets/header.dart';

class ProductDetails extends StatelessWidget {
  ProductDetails({super.key});

  final List<String> imgList = [
    'assets/images/productbackground.png',
    'assets/images/productbackground.png',
    'assets/images/productbackground.png',
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff7ca000),
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background1.png'),
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height * .06,
              ),
              AppHeader(
                PageTitel: 'PRODUCT DETAILS',
                Points: true,
              ),
              SizedBox(
                height: width * .06,
              ),
              Container(
                width: width,
                height: height * .3,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/productbackground.png'),
                  fit: BoxFit.cover,
                )),
              ),
              SizedBox(
                height: width * .02,
              ),
              Container(
                width: width * .9,
                height: width * .2,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Men Leather Bag',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: width * .012,
                        ),
                        SizedBox(
                          width: width * .5,
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '\$',
                          style: TextStyle(
                              color: Color(0xffc4fe01),
                              fontSize: 20,
                              fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          width: width * .015,
                        ),
                        Text(
                          '39.50',
                          style: TextStyle(
                              color: Color(0xffc4fe01),
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: width * .02,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      ProductQuantity(),
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () =>
                            Navigator.pushNamed(context, MyRoutes.CheckOut),
                        child: Container(
                          width: width * .5,
                          height: width * .18,
                          color: Color(0xff202020),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/addtocart.png',
                                scale: 3,
                              ),
                              SizedBox(
                                width: width * .03,
                              ),
                              Text(
                                'Buy Now',
                                style: TextStyle(
                                    color: Color(0xffc1ee26),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: width * .05,
              ),
              Container(
                width: width * .9,
                alignment: Alignment.centerLeft,
                child: Text(
                  'Product Description',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: width * .05,
              ),
              SizedBox(
                width: width * .9,
                height: width * .5,
                child: ListView(padding: EdgeInsets.all(0), children: [
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut liquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  SizedBox(
                    height: width * .05,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut liquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )
                ]),
              ),
              SizedBox(
                height: width * .1,
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: MyBottomNevigation(),
    );
  }
}
