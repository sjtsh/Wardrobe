import 'package:flutter/material.dart';

class CartCheckout extends StatelessWidget {
  final Function setIndex;
  CartCheckout(this.setIndex);
  final int index = 3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0, top: 10.0),
      child: ElevatedButton(
        onPressed: () {
          setIndex(index);
        },
        style: ElevatedButton.styleFrom(
          primary: Color(0x80ECF0F3).withOpacity(0.8),
          onPrimary: Colors.black,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "CHECKOUT",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
