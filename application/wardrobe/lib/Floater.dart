import 'package:flutter/material.dart';

class Floater extends StatelessWidget {
  final Function setIndex;
  final index = 2;

  Floater(this.setIndex);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
      decoration: BoxDecoration(
      color: Colors.black,
      border: Border.all(color: Colors.white,width: 2),
      borderRadius: BorderRadius.all(Radius.circular(20),
      ),),
        child: FloatingActionButton(
          backgroundColor: Colors.black,
          splashColor: Color(0x80ECF0F3).withOpacity(0.8),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              Icons.home_outlined,
              color: Colors.white,
              size: 30,
            ),
          ),
          onPressed: () {
            setIndex(index);
          },
          elevation: 10.0,
        ),
      ),
    );
  }
}
