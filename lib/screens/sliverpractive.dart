import 'package:flutter/material.dart';

class SliverParactice extends StatelessWidget {
  const SliverParactice({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.amber,
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(
                height: width * .2,
              ),
              Text(
                'Paractice',
              ),
              SizedBox(
                height: width * .2,
              ),
              Container(
                width: 20,
                height: 20,
                // decoration: BoxDecoration(color: Colors.red),
                padding: EdgeInsets.all(00),
                child: IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/images/icon-close.png',
                    scale: 5,
                  ),
                ),
              ),
              SizedBox(
                height: width * .2,
              ),
              InkWell(onTap: () {}, child: Icon(Icons.abc)),
            ],
          ),
        ));
  }
}
