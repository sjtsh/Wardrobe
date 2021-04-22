import 'package:flutter/material.dart';

class HomeCart extends StatelessWidget {
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
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: const Text("Added to cart")));
              print("added to cart");
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF9CC3FF),
              onPrimary: Colors.black,
            ),
            child: Text(
              "Add to Cart",
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
