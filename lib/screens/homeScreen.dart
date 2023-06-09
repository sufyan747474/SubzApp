import 'package:flutter/material.dart';
import 'package:subz/utils/routes.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:subz/widgets/categories.dart';
import 'package:subz/widgets/header.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<String> categories = ["Category 1", "Category 2", "Category 3"];
  List<String> IconImages = [
    'assets/images/building.png',
    'assets/images/bike.png',
    'assets/images/shirt.png',
  ];

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
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: height * .06,
            ),
            AppHeader(
              Points: true,
              SubSet: true,
              PageTitel: 'HOME',
            ),
            SizedBox(
              height: width * .06,
            ),
            CarouselSlider(
              options: CarouselOptions(height: width * .451),
              items: [1].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      padding: EdgeInsets.all(12),
                      width: width * 1,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image:
                              AssetImage('assets/images/sliderbackground.png'),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.35),
                            BlendMode.srcOver,
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Image.asset(
                                'assets/images/profile.png',
                                width: width * .1,
                                alignment: Alignment.topRight,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: width * .1,
                          ),
                          Text(
                            'Product Name',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          SizedBox(
                            height: width * .01,
                          ),
                          Text(
                            'Lorem ipsum dolor sit',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(
                            height: width * .01,
                          ),
                          RatingBar.builder(
                            unratedColor: Colors.white,
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 25,
                            itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star_rate_rounded,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                        ],
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: width * .04,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * .02),
              child: SizedBox(
                height: width * .12,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (
                    context,
                    index,
                  ) {
                    return Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: MyCategories(
                            image: IconImages[index],
                            title: categories[index],
                            url: () {}));
                  },
                ),
              ),
            ),
            SizedBox(
              height: width * .04,
            ),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: width * .06),
                itemCount: 6,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: width * .05,
                  mainAxisSpacing: width * 0.05,
                  crossAxisCount: 2,
                  childAspectRatio: (24 + width * 0.28) /
                      (width * .28 +
                          width * 0.03 +
                          17 +
                          width * 0.02 +
                          16 +
                          width * 0.01 +
                          15),
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, MyRoutes.ProductDetails);
                    },
                    child: Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(117, 124, 124, 124),
                                blurRadius: 5,
                                offset: Offset(0, 2),
                                spreadRadius: 0),
                          ],
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
                            height: width * .28,
                          ),
                          SizedBox(
                            height: width * .03,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                              SizedBox(
                                width: width * .5,
                                child: Text(
                                  'Lorem ipsum dolor sit,Lorem ipsum dolor sit,Lorem ipsum dolor sit',
                                  style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: Color(0xffb2b2b2),
                                      fontSize: 15),
                                ),
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

      // bottomNavigationBar: MyBottomNevigation(),
    );
  }
}
