import 'package:flutter/material.dart';

class Reciept extends StatelessWidget {
  final Function setIndex;

  Reciept(this.setIndex);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text("PAYED OFF",
          style: TextStyle(color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
