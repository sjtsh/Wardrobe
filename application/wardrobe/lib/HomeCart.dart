import 'package:flutter/material.dart';

class HomeCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0, top: 10.0),
      child: ElevatedButton(
        onPressed: () {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: const Text("Added to cart")));
          print("added to cart");
        },
        style: ElevatedButton.styleFrom(
          primary: Color(0x80ECF0F3).withOpacity(0.8),
          onPrimary: Colors.black,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "Add to Cart",
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
