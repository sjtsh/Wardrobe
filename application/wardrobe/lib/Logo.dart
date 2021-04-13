import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final Image image;

  Logo(this.image);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(top: 30),
        width: 76.43,
        child: image,
      ),
    );
  }
}
