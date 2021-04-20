import 'package:flutter/material.dart';

import 'DescriptionList.dart';

class Description extends StatelessWidget {
  final int productIndex;
  final Function setIndex;
  final Function setBackground;
  Description(this.productIndex, this.setIndex, this.setBackground);

  final List img = const [
    AssetImage("assets/Product1.png"),
    AssetImage("assets/Product2.png"),
    AssetImage("assets/Product3.png"),
    AssetImage("assets/Product1.png"),
    AssetImage("assets/Product2.png"),
    AssetImage("assets/Product3.png")
  ];
  List names = const ["Woolen Sweater",  "Skeleton T-shirt",  "Modern Overcoat", "Woolen Sweater",  "Skeleton T-shirt",  "Modern Overcoat"];
  List price = const [1000,  2000,  3000,  4000,  5000,  6000];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 300,
          width: 250,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: img[productIndex]),
              borderRadius: BorderRadius.all(Radius.circular(25))),
        ),
        Padding(
          padding: const EdgeInsets.only(top:10.0),
          child: Text(names[productIndex], textAlign:TextAlign.center, style: TextStyle(fontSize: 40, color: Colors.white),),
        ),
        Text(price[productIndex].toString(), textAlign:TextAlign.center, style: TextStyle(fontSize: 30, color: Colors.white),),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: Column(
            children: [
              DescriptionList("Color", "Black"),
              DescriptionList("Size", "S, M, L, XL"),
              DescriptionList("Variant", "U neck"),
              DescriptionList("Material", "Cotton"),
            ],
            ),
          ),
        )
      ],
    );
  }
}
