import 'package:flutter/material.dart';
import './Product.dart';

// List names = const ["Woolen Sweater",  "Skeleton T-shirt",  "Modern Overcoat", "Black Hat",  "Cream Skirt",  "Denim Jacket"];
// List price = const [3600,  2500,  8000,  1200,  4000,  6000];

class CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListWheelScrollView(
        itemExtent: 120,
        diameterRatio: 4,
        children: [
          Product(AssetImage("assets/Product1.png"), "Woolen Sweater", 3600),
          Product(AssetImage("assets/Product2.png"), "Skeleton T-shirt", 2500),
          Product(AssetImage("assets/Product3.png"), "Modern Overcoat", 8000),
          Product(AssetImage("assets/Product4.jpg"), "Black Hat", 1200),
          Product(AssetImage("assets/Product5.jpg"), "Cream Skirt", 4000),
          Product(AssetImage("assets/Product6.jpg"), "Denim Jacket", 6000),
        ],
      ),
    );
  }
}
