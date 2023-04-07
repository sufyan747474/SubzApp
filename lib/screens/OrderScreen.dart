import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:subz/models/CardProduct.dart';
import 'package:subz/utils/routes.dart';
import 'package:subz/widgets/MyButtons.dart';
import 'package:subz/widgets/bottomNevigation.dart';
import 'package:subz/widgets/cardProducts.dart';
import 'package:subz/widgets/inputField.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class OrderScreen extends StatelessWidget {
  // List<Products> Product = AllProducts;
  OrderScreen({super.key});

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
                      'MY ORDER',
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
                height: width * .1,
              ),
              SizedBox(
                width: width * .9,
                height: height * .7,
                child: ListView.builder(
                  padding: EdgeInsets.all(0),
                  itemCount: AllProducts.length,
                  itemBuilder: (context, index) {
                    return Slidable(
                        useTextDirection: false,
                        child: CardProducts(index),
                        startActionPane: ActionPane(
                          motion: StretchMotion(),
                          children: [
                            Container(
                              width: width * .15,
                              height: width * .15,
                              decoration: BoxDecoration(),
                              child: SlidableAction(
                                borderRadius: BorderRadius.circular(150),
                                autoClose: true,
                                backgroundColor: Colors.red,
                                icon: Icons.delete_forever,
                                onPressed: (BuildContext context) {},
                              ),
                            )
                          ],
                        ));
                  },
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: MyBottomNevigation());
  }
}
