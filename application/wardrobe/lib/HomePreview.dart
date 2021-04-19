import 'package:flutter/material.dart';

class HomePreview extends StatelessWidget {
  final AssetImage img;
  final Function changeDetails;
  final int productIndex;
  HomePreview(this.img, this.changeDetails, this.productIndex);

  @override
  Widget build(BuildContext context) {
    return Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: TextButton(
                child: Container(
                  height: 400,
                  width: 250,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: img),
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                ),
                onPressed: (){changeDetails(productIndex);},
              ),
            ),
          );
  }
}
