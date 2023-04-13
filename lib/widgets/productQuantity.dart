import 'package:flutter/material.dart';

class ProductQuantity extends StatefulWidget {
  const ProductQuantity({super.key});

  @override
  State<ProductQuantity> createState() => _ProductQuantityState();
}

class _ProductQuantityState extends State<ProductQuantity> {
  late int ProductQty = 1;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.only(left: width * .05),
      width: width * .5,
      height: width * .18,
      color: Color(0xff474747),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Quantity',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            width: width * .02,
          ),
          InkWell(
            onTap: () {
              if (ProductQty > 1)
                setState(() {
                  ProductQty = ProductQty - 1;
                });
            },
            child: Padding(
              padding:
                  const EdgeInsets.only(bottom: 8, right: 4, left: 4, top: 8),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xff333333),
                    borderRadius: BorderRadius.circular(6)),
                child: Icon(
                  size: 22,
                  Icons.remove,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            width: width * .02,
          ),
          Text(
            ProductQty.toString(),
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            width: width * .02,
          ),
          InkWell(
            onTap: () {
              setState(() {
                ProductQty = ProductQty + 1;
              });
            },
            child: Padding(
              padding:
                  const EdgeInsets.only(bottom: 8, right: 4, top: 8, left: 4),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xff333333),
                    borderRadius: BorderRadius.circular(6)),
                child: Icon(
                  size: 22,
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
