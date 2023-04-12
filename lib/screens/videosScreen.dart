import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:subz/popups/UploadVideo.dart';

class WatchVideos extends StatelessWidget {
  const WatchVideos({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/videobackground.png'),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top: height * .06),
              width: width * .9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/Profile-pic.png',
                        scale: 3,
                      ),
                      SizedBox(
                        width: width * .04,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Martha James',
                            style: TextStyle(
                                color: Color(
                                  0xffc5ee29,
                                ),
                                fontWeight: FontWeight.w900,
                                fontSize: 17),
                          ),
                          SizedBox(
                            height: width * .01,
                          ),
                          Text(
                            'Mar 24, 2022',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close_sharp,
                      color: Colors.white,
                      size: 32,
                    ),
                  )
                ],
              ),
            ),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.asset(
                  'assets/images/playicon.png',
                  scale: 4,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(bottom: height * .04),
              width: width * .9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RatingBar.builder(
                        unratedColor: Colors.white,
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 30,
                        itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star_rate_rounded,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      SizedBox(
                        height: width * .02,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/views.png',
                            scale: 3,
                          ),
                          SizedBox(
                            width: width * .02,
                          ),
                          Text(
                            'Views',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: width * 0.02,
                      ),
                      Text(
                        '256',
                        style: TextStyle(
                            color: Color(
                              0xffc5ee29,
                            ),
                            fontWeight: FontWeight.w900,
                            fontSize: 17),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return UploadVideo();
                              });
                        },
                        child: Image.asset(
                          'assets/images/addvideo.png',
                          scale: 3,
                        ),
                      ),
                      SizedBox(
                        height: width * .02,
                      ),
                      Text(
                        'Add your own',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
