import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final Image image;
  final Function setIndex;
  final int index=2;

  Logo(this.image, this.setIndex);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){
        setIndex(index);
      },
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          margin: EdgeInsets.only(top: 30),
          width: 76.43,
          child: image,
        ),
      ),
    );
  }
}
