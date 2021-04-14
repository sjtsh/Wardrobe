import 'package:flutter/material.dart';

class HomePreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 25, top: 25),
            child: Container(
              height: 400,
              width: 30,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/Product1_partition.png"),
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
                    image: DecorationImage(
                        image: AssetImage("assets/Product2.png")),
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
                image: DecorationImage(
                    image: AssetImage("assets/Product3_partition.png")),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  bottomLeft: Radius.circular(25),
                ),
              ),
              alignment: Alignment.centerRight,
            ),
          ),
        ],
      );
  }
}
