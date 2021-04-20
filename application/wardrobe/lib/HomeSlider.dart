import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import './HomePreview.dart';

class HomeSlider extends StatelessWidget {

  final Function changeHome;
  final Function changeDetails;
  final int productIndex;

  HomeSlider(this.changeHome, this.changeDetails, this.productIndex);

  final List img = const [
    AssetImage("assets/Product1.png"),
    AssetImage("assets/Product2.png"),
    AssetImage("assets/Product3.png"),
    AssetImage("assets/Product1.png"),
    AssetImage("assets/Product2.png"),
    AssetImage("assets/Product3.png")
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: [
          HomePreview(img[0], changeDetails, productIndex),
          HomePreview(img[1], changeDetails, productIndex),
          HomePreview(img[2], changeDetails, productIndex),
          HomePreview(img[3], changeDetails, productIndex),
          HomePreview(img[4], changeDetails, productIndex),
          HomePreview(img[5], changeDetails, productIndex),
          ],
          options: CarouselOptions(
          height: 400,
          aspectRatio: 16 / 9,
          viewportFraction: 0.6,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 5),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
          onPageChanged: changeHome,
        ));
  }
}
