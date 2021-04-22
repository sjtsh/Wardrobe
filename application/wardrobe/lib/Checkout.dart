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
                width: 250,
                height: 200,
                child: CheckoutSlider()),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom:8.0),
          child: Text(
            "25,300/-",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
        CheckoutField(),
      ],
    );
  }
}
