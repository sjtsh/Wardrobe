import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final Image image;
  final Function setIndex;
  final int index=2;
  final int index2=20;
  final realIndex;
  Logo(this.image, this.setIndex, this.realIndex);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Container()),
        TextButton(
          onPressed: (){
            setIndex(index);
          },
          onLongPress: (){
            setIndex(index2);
          },
          child: Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(top: 30),
              width: 76.43,
              child: image,
            ),
          ),
        ),
        Expanded(child: Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 70.0),
          child: TextButton(
            child: Icon(
              Icons.accessibility_new_outlined,
              color: realIndex==2 ? Colors.white : Colors.black,
              size: 40,
            ),
            onPressed: (){setIndex(6);},
          ),
        )),
      ],
    );
  }
}
