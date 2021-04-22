import 'package:flutter/material.dart';

class CartCheckout extends StatelessWidget {
  final Function setIndex;
  CartCheckout(this.setIndex);
  final int index = 3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0, top: 10.0),
      child: Container(
          decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          color: Color(0xFF9CC3FF),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
          child: TextButton(
            onPressed: () {
              setIndex(index);
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF9CC3FF).withOpacity(0.8),
              onPrimary: Colors.black,
            ),
            child: Text(
              "CHECKOUT",
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
