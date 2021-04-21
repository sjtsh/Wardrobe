
import 'package:flutter/material.dart';
import './HomeCart.dart';
import './HomeSlider.dart';
import 'package:carousel_slider/carousel_options.dart';

class Home extends StatefulWidget {
  final Function changeDetails;
  Home(this.changeDetails);


  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int productIndex = 0;
  List names = const ["Woolen Sweater",  "Skeleton T-shirt",  "Modern Overcoat", "Black Hat",  "Cream Skirt",  "Denim Jacket"];
  List price = const [3600,  2500,  8000,  1200,  4000,  6000];

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
