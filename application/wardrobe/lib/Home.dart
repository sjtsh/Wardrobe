
import 'package:flutter/material.dart';
import './HomeCart.dart';
import './HomeSlider.dart';
import 'package:carousel_slider/carousel_options.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int productIndex = 0;
  List names = const ["Skeleton T-shirt",  "Woolen Sweater",  "Modern Overcoat", "Skeleton T-shirt",  "Woolen Sweater",  "Modern Overcoat"];
  List price = const [1000,  2000,  3000,  4000,  5000,  6000];

  void changeHome(int number, CarouselPageChangedReason reason){
    setState(() {
      productIndex = number;
    });
    print("picture changed to " + number.toString() + " because of ");
    print(reason);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [

        HomeSlider(changeHome),

        // HomeSlider(widget.items, widget.price),
        // HomeSlider(changeHome, widget.items, widget.price),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              names[productIndex],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Expanded(
          child: Text(
            price[productIndex].toString(),
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ),
        HomeCart(),
      ],
    );
  }
}
