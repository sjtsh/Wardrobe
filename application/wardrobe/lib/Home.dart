import 'package:flutter/material.dart';
import 'package:wardrobe/HomeCart.dart';
import 'package:wardrobe/HomePreview.dart';

class Home extends StatelessWidget {
  @override
  Home();

  Widget build(BuildContext context) {
    return Column(
      children: [
        HomePreview(),
        Text(
          "Skeleton T-shirt",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
            color: Colors.white,
          ),
        ),
        Text(
          "2500/-",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        HomeCart(),
      ],
    );
  }
}
