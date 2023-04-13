import 'package:flutter/material.dart';
import 'package:subz/models/CardProduct.dart';
import 'package:subz/widgets/cardProducts.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../widgets/header.dart';

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
            AppHeader(PageTitel: 'MY ORDER', Points: true, SubSet: true),
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
                    // startActionPane: ActionPane(
                    //   motion: ScrollMotion(),
                    //   children: [
                    //     Container(
                    //       child: SlidableAction(
                    //         onPressed: (context) {},
                    //         backgroundColor: Color(0xFFFE4A49),
                    //         foregroundColor: Colors.white,
                    //         icon: Icons.delete,
                    //         label: 'Delete',
                    //       ),
                    //     ),
                    //     // Container(
                    //     //   width: width * .15,
                    //     //   height: width * .15,
                    //     //   decoration: BoxDecoration(),
                    //     //   child: SlidableAction(
                    //     //     borderRadius: BorderRadius.circular(150),
                    //     //     autoClose: true,
                    //     //     backgroundColor: Colors.red,
                    //     //     icon: Icons.delete_forever,
                    //     //     onPressed: (BuildContext context) {},
                    //     //   ),
                    //     // ),
                    //   ],
                    // ),
                    endActionPane: ActionPane(
                      motion: ScrollMotion(),
                      children: [
                        Container(
                          alignment: Alignment.center,
                          margin:
                              EdgeInsets.only(left: width * .15, bottom: 12),
                          width: width * .15,
                          height: width * .15,
                          decoration: BoxDecoration(
                            color: Color(0xFF8fb900),
                            borderRadius: BorderRadius.circular(80),
                          ),
                          child: SlidableAction(
                            flex: 1,
                            icon: Icons.delete_forever,
                            onPressed: (context) {},
                            foregroundColor: Colors.white,
                            backgroundColor: Color(0xFF8fb900),
                            borderRadius: BorderRadius.circular(80),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      // bottomNavigationBar: MyBottomNevigation(),
    );
  }
}
