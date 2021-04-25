import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import './HomePreview.dart';

class HomeSlider extends StatelessWidget {

  final Function changeHome;
  final Function changeDetails;
  final int productIndex;

  HomeSlider(this.changeHome, this.changeDetails, this.productIndex);

  final List img = const [
    AssetImage("assets/Product1.jpg"),
    AssetImage("assets/Product2.jpg"),
    AssetImage("assets/Product3.jpg"),
    AssetImage("assets/Product4.jpg"),
    AssetImage("assets/Product5.jpg"),
    AssetImage("assets/Product6.jpg")
  ];

  @override
  Widget build(BuildContext context) {

    return CarouselSlider(
        items: [
          Semantics(child: HomePreview(img[0], changeDetails, productIndex),
          label: "Image of Woolen Sweater",),
          Semantics(child: HomePreview(img[1], changeDetails, productIndex),
          label: "Image of Skeleton T-shirt",),
          Semantics(child: HomePreview(img[2], changeDetails, productIndex),
          label: "Image of Modern Overcoat",),
          Semantics(child: HomePreview(img[3], changeDetails, productIndex),
          label: "Image of Black Hat"),
          Semantics(child: HomePreview(img[4], changeDetails, productIndex),
          label: "Image of Cream Skirt"),
          Semantics(child: HomePreview(img[5], changeDetails, productIndex),
          label: "Image of Denim Jacket",),
          ],
          options: CarouselOptions(
          height: 400,
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
