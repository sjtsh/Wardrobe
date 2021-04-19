import 'package:flutter/material.dart';

class CheckoutPreview extends StatelessWidget {

  final AssetImage img;
  CheckoutPreview(this.img);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
          image: DecorationImage(
          fit: BoxFit.cover,
          image: img),
      borderRadius: BorderRadius.all(Radius.circular(25)))),
    );
  }
}
