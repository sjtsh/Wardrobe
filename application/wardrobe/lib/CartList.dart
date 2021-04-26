import 'package:flutter/material.dart';
import './Product.dart';
import 'main.dart';

class CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListWheelScrollView(
        itemExtent: 100,
        diameterRatio: 4,
        children: [
          Product(Wardrobe.img[0], Wardrobe.names[0], Wardrobe.price[0]),
          Product(Wardrobe.img[1], Wardrobe.names[1], Wardrobe.price[1]),
          Product(Wardrobe.img[2], Wardrobe.names[2], Wardrobe.price[2]),
          Product(Wardrobe.img[3], Wardrobe.names[3], Wardrobe.price[3]),
          Product(Wardrobe.img[4], Wardrobe.names[4], Wardrobe.price[4]),
          Product(Wardrobe.img[5], Wardrobe.names[5], Wardrobe.price[5]),
        ],
      ),
    );
  }
}
