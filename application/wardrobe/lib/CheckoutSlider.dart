import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'CheckoutPreview.dart';

class CheckoutSlider extends StatefulWidget {
  @override
  _CheckoutSliderState createState() => _CheckoutSliderState();
}

class _CheckoutSliderState extends State<CheckoutSlider> {
  int pos = 0;
  final List img = const [
    AssetImage("assets/Product1.png"),
    AssetImage("assets/Product2.png"),
    AssetImage("assets/Product3.png"),
    AssetImage("assets/Product4.jpg"),
    AssetImage("assets/Product5.jpg"),
    AssetImage("assets/Product6.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Expanded(child: Container()),
          CarouselSlider(
                items:[
                CheckoutPreview(img[0]),
                CheckoutPreview(img[1]),
                CheckoutPreview(img[2]),
                CheckoutPreview(img[3]),
                CheckoutPreview(img[4]),
                CheckoutPreview(img[5]),
              ],
                options: CarouselOptions(
                //pageViewKey: ,
                //scrollPhysics: ,
                  height: 250,
                  enableInfiniteScroll: false,
                  viewportFraction: 1,
                  initialPage: 0,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, reason){
                    setState(() {
                      pos = index;
                    });
                  }
                )
            ),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: img.map((url){
              int index = img.indexOf(url);
                return Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(

                  shape: BoxShape.circle,
                  color: pos == index ? Color(0xFFFFFFFF): Color(0x63FFFFFF),
                ),
                );
              }).toList(),
              ),
            Expanded(child: Container()),
            ],
            )
    );
  }
}
