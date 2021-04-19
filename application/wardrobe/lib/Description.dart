import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  final int productIndex;
  final Function setIndex;

  Description(this.productIndex, this.setIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "WELCOME TO PRODUCT DESCRIPTION " + productIndex.toString(),
        style: TextStyle(
          color: Colors.white,
          fontSize: 40,
        ),
      ),
    );
  }
}
