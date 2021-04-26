
import 'package:flutter/material.dart';
import './HomeCart.dart';
import './HomeSlider.dart';
import 'package:carousel_slider/carousel_options.dart';

import 'main.dart';

class Home extends StatefulWidget {
  final Function changeDetails;
  Home(this.changeDetails);


  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int productIndex = 0;

  void changeHome(int number, CarouselPageChangedReason reason){
    setState(() {
      productIndex = number;
    });
    print("Home screen picture changed to " + number.toString() + " because of ");
    print(reason);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [

        HomeSlider(changeHome, widget.changeDetails, productIndex),

        // HomeSlider(widget.items, widget.price),
        // HomeSlider(changeHome, widget.items, widget.price),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              Wardrobe.names[productIndex],
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
            Wardrobe.price[productIndex].toString(),
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
