import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Home();

  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 25, top: 25),
              child: Container(
                height: 400,
                width: 30,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/Product1.png"),
                  ),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                ),
                alignment: Alignment.centerLeft,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Container(
                  height: 400,
                  width: 250,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/Product2.png")),
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 25),
              child: Container(
                height: 400,
                width: 30,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/Product3.png")),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                  ),
                ),
                alignment: Alignment.centerRight,
              ),
            ),
          ],
        ),
        Text(
          "Skeleton Tshirt",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 40, color: Colors.white),
        ),
        Text(
          "2500/-",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: ElevatedButton(
            onPressed: () {
              Scaffold.of(context).showSnackBar(SnackBar(content: const Text("Added to cart")));
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0x80ECF0F3).withOpacity(0.8),
              onPrimary: Colors.black,
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
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
        ),
      ],
    );
  }
}
