import 'package:flutter/material.dart';

class Floater extends StatelessWidget {
  final Function setIndex;
  final String page;
  final index = 2;

  Floater(this.setIndex, this.page);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
      decoration: BoxDecoration(
      color: page=="home" ? Colors.black : Color(0xFF9CC3FF),
      border: page=="home" ? Border.all(color: Colors.white,width: 2) : Border.all(color: Colors.black,width: 3),
      borderRadius: BorderRadius.all(Radius.circular(20),
      ),),
        child: FloatingActionButton(
          backgroundColor: page=="home" ? Colors.black : Color(0xFF9CC3FF),
          splashColor: Color(0x80ECF0F3).withOpacity(0.8),
          onPressed: () {
            setIndex(index);
          },
          elevation: 0,
          child: Semantics(
            label: "Go to Home",
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                Icons.home_outlined,
                color: page=="home" ? Colors.white : Colors.black,
                size: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
