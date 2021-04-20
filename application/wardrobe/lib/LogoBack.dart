import 'package:flutter/material.dart';
import 'package:wardrobe/Logo.dart';

class LogoBack extends StatelessWidget {
  final Image logo;
  final Function setIndex;
  final int index = 2;
  final int index2 = 20;

  LogoBack(this.logo, this.setIndex);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        setIndex(index);
      },
      onLongPress: () {
        setIndex(index2);
      },
      child: Align(
        alignment: Alignment.topCenter,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0, right: 70.0,),
                child: Icon(
                  Icons.arrow_back_ios_outlined,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 30),
                width: 76.43,
                child: logo),
            Expanded(
              child: Container(
                width: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
