import 'package:flutter/material.dart';

class HomePreview extends StatelessWidget {
  final AssetImage img;
  HomePreview(this.img);

  @override
  Widget build(BuildContext context) {
    return Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Container(
                height: 400,
                width: 250,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: img),
                    borderRadius: BorderRadius.all(Radius.circular(25))),
              ),
            ),
          );
  }
}
