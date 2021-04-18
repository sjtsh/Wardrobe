import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './CheckoutField.dart';

class Checkout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/Product2.png"),
              )
            ),
          ),
        ),
        Expanded(child: CheckoutField()),
      ],
    );
  }
}
