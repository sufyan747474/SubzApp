import 'package:flutter/material.dart';
import 'package:subz/models/CardProduct.dart';
import 'package:subz/widgets/bottomNevigation.dart';
import 'package:subz/widgets/cardProducts.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});

  // List<Products> allproduct = [
  //   Products(
  //       ProductDate: DateTime.now(),
  //       productImage: 'assets/images/bags.png',
  //       productPrice: '\$40',
  //       productQty: 'Quantity: 02',
  //       ProductName: 'Product Name')
  // ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Color(0xff0c5fe01),
        body: Container(
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
                width: width * .9,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: height * .045,
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        width: width * .27,
                        decoration: BoxDecoration(
                            color: Color(0xff0c5fe01),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Sub Store',
                            ),
                            SizedBox(
                              width: width * .02,
                            ),
                            Image.asset(
                              'assets/images/arrow-alt-circle-down.png',
                              width: width * .04,
                            )
                          ],
                        ),
                      ),
                    ),
                    Text(
                      'SEARCH',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                    ),
                    Align(
                        alignment: Alignment.topRight,
                        child: Image.asset(
                          'assets/images/starimg.png',
                          width: width * .07,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: width * .06,
              ),
              SizedBox(
                width: width * 0.9,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: width * .14,
                      width: width * 0.74,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: width * .05),
                          hintText: 'Search Products',
                          border: InputBorder.none,
                          suffixIcon: Image.asset(
                            'assets/images/search.png',
                            scale: 3.5,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * .05,
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/filter-icon.png',
                          width: width * .11,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: width * .01,
              ),
              Expanded(
                child: ListView(
                  children: [
                    SizedBox(
                      height: width * .92,
                      child: ListView.builder(
                        itemCount: AllProducts.length,
                        itemBuilder: (context, index) {
                          return Center(
                            child: CardProducts(index
                                // AllProducts: DateTime.now(),
                                // productImage: 'assets/images/bags.png',
                                // productPrice: '\$40',
                                // productQty: 'Quantity: 02',
                                // ProductName: 'Product Name',
                                ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: width * .05,
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          alignment: Alignment.center,
                          height: width * .1,
                          width: width * .3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            color: Color(0xff5b7011),
                          ),
                          child: Text(
                            'Past Search',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: width * .05,
                    ),
                    SizedBox(
                      height: width * .6,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.all(0),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'assets/images/hat.png',
                                    alignment: Alignment.center,
                                    width: width * .28,
                                  ),
                                  SizedBox(
                                    height: width * .03,
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '\$25',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color(0xff7da014),
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        height: width * .02,
                                      ),
                                      Text(
                                        'Product Name',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        height: width * .01,
                                      ),
                                      Text(
                                        'Lorem ipsum dolor sit',
                                        style: TextStyle(
                                            color: Color(0xffb2b2b2),
                                            fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: MyBottomNevigation());
  }
}
