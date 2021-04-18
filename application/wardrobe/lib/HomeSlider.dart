import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import './HomePreview.dart';

class HomeSlider extends StatelessWidget {

  final Function changeHome;

  HomeSlider(this.changeHome);

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
          HomePreview(img[0]),
          HomePreview(img[1]),
          HomePreview(img[2]),
          HomePreview(img[3]),
          HomePreview(img[4]),
          HomePreview(img[5]),
          ],
          options: CarouselOptions(
          height: 400,
          aspectRatio: 16 / 9,
          viewportFraction: 0.6,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 10),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
          onPageChanged: changeHome,
        ));
  }
}
