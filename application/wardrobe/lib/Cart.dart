import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Cart extends StatelessWidget {
  Cart();

  Widget list(AssetImage inputImage, String name, int price) {
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

  final List<String> name = const [
    "Product 1",
    "Product 2",
    "Product 3",
  ];
  final List<int> price = const [
    10000,
    12000,
    13000,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 60.0),
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
          child: Container(
            child: ListWheelScrollView(
              itemExtent: 120,
              diameterRatio: 4,
              children: [
                list(AssetImage("assets/Product1.png"), "Product 1", 10000),
                list(AssetImage("assets/Product2.png"), "Product 2", 12000),
                list(AssetImage("assets/Product3.png"), "Product 3", 13000),
                list(AssetImage("assets/Product1.png"), "Product 1", 10000),
                list(AssetImage("assets/Product2.png"), "Product 2", 12000),
                list(AssetImage("assets/Product3.png"), "Product 3", 13000),
                list(AssetImage("assets/Product1.png"), "Product 1", 10000),
                list(AssetImage("assets/Product2.png"), "Product 2", 12000),
                list(AssetImage("assets/Product3.png"), "Product 3", 13000),
                list(AssetImage("assets/Product1.png"), "Product 1", 10000),
                list(AssetImage("assets/Product2.png"), "Product 2", 12000),
                list(AssetImage("assets/Product3.png"), "Product 3", 13000),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Text(
            "120,000/-",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
        Padding(
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
        )
      ],
    );
  }
}
