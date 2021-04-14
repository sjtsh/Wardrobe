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
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.white.withOpacity(0.8),
          ),
          child: Row(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration:
                BoxDecoration(image: DecorationImage(image: inputImage)),
              ),
              Expanded(
                child: Text(
                  name,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              Expanded(
                child: Text(
                  price.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              TextButton(
                onPressed: () {
                  print("pressed");
                },
                child: Text(
                  "-",
                  style: TextStyle(color: Colors.black, fontSize: 40),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
