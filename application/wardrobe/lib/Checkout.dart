import 'package:flutter/material.dart';

import './CheckoutField.dart';
import './CheckoutSlider.dart';

class Checkout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            child: SizedBox(
                width: 300,
                height: 300,
                child: CheckoutSlider()),
          ),
        ),
        CheckoutField(),
      ],
    );
  }
}
