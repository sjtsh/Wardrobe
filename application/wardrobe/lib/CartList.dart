import 'package:flutter/material.dart';
import './Product.dart';

class CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListWheelScrollView(
        itemExtent: 120,
        diameterRatio: 4,
        children: [
          Product(AssetImage("assets/Product1.png"), "Product 1", 10000),
          Product(AssetImage("assets/Product2.png"), "Product 2", 12000),
          Product(AssetImage("assets/Product3.png"), "Product 3", 13000),
          Product(AssetImage("assets/Product1.png"), "Product 1", 10000),
          Product(AssetImage("assets/Product2.png"), "Product 2", 12000),
          Product(AssetImage("assets/Product3.png"), "Product 3", 13000),
          Product(AssetImage("assets/Product1.png"), "Product 1", 10000),
          Product(AssetImage("assets/Product2.png"), "Product 2", 12000),
          Product(AssetImage("assets/Product3.png"), "Product 3", 13000),
          Product(AssetImage("assets/Product1.png"), "Product 1", 10000),
          Product(AssetImage("assets/Product2.png"), "Product 2", 12000),
          Product(AssetImage("assets/Product3.png"), "Product 3", 13000),
        ],
      ),
    );
  }
}
