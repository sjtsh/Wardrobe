import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'CheckoutPreview.dart';
import 'main.dart';

class CheckoutSlider extends StatefulWidget {
  @override
  _CheckoutSliderState createState() => _CheckoutSliderState();
}

class _CheckoutSliderState extends State<CheckoutSlider> {

  int pos = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Expanded(child: Container()),
          CarouselSlider(
                items:[
                CheckoutPreview(Wardrobe.img[0]),
                CheckoutPreview(Wardrobe.img[1]),
                CheckoutPreview(Wardrobe.img[2]),
                CheckoutPreview(Wardrobe.img[3]),
                CheckoutPreview(Wardrobe.img[4]),
                CheckoutPreview(Wardrobe.img[5]),
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
              children: Wardrobe.img.map((url){
              int index = Wardrobe.img.indexOf(url);
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
