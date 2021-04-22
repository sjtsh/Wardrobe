import 'package:flutter/material.dart';
import './Product.dart';

class CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListWheelScrollView(
        itemExtent: 100,
        diameterRatio: 4,
        children: [
          Product(AssetImage("assets/Product1.jpg"), "Woolen Sweater", 3600),
          Product(AssetImage("assets/Product2.jpg"), "Skeleton T-shirt", 2500),
          Product(AssetImage("assets/Product3.jpg"), "Modern Overcoat", 8000),
          Product(AssetImage("assets/Product4.jpg"), "Black Hat", 1200),
          Product(AssetImage("assets/Product5.jpg"), "Cream Skirt", 4000),
          Product(AssetImage("assets/Product6.jpg"), "Denim Jacket", 6000),
        ],
      ),
    );
  }
}
