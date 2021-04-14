import 'package:flutter/material.dart';

class CartCheckout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: ElevatedButton(
        onPressed: () {
          print("checked out");
        },
        style: ElevatedButton.styleFrom(
          primary: Color(0x80ECF0F3).withOpacity(0.8),
          onPrimary: Colors.black,
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(
            "CHECKOUT",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
