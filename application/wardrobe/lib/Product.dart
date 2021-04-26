import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  final String name;
  final int price;
  final AssetImage inputImage;

  Product(this.inputImage, this.name, this.price,);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Color(0x599CABC2),
        ),
        child: Row(
          children: [
            Container(
              height: 65,
              width: 65,
              decoration:
              BoxDecoration(image: DecorationImage(image: inputImage)),
            ),
            Expanded(
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Expanded(
              child: Text(
                price.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            TextButton(
              onPressed: () {
                print("pressed");
              },
              child: Semantics(
                label: "Remove from cart",
                child: Text(
                  "-",
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
              ),
            ),
          ],
        ),
      ),
    );
    }
  }
