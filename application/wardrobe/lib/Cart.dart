import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:wardrobe/CartCheckout.dart';

import './CartList.dart';
import './CartCheckout.dart';

class Cart extends StatelessWidget {
  final Function setIndex;
  Cart(this.setIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Text(
            "CART",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
              color: Colors.white,
            ),
          ),
        ),
        Expanded(
          child: CartList(),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Text(
            "25,300/-",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
        CartCheckout(setIndex),
      ],
    );
  }
}
