import 'package:flutter/material.dart';

import 'RecieptField.dart';

class Reciept extends StatelessWidget {
  final Function setIndex;

  Reciept(this.setIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Text("PAYMENT SUCCESSFUL TO",
          textAlign: TextAlign.center,
            style: TextStyle(color: Color(0xFF9CC3FF),
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
          ),
        ),
        RecieptField(),
        Expanded(child: Padding(
          padding: const EdgeInsets.only(bottom: 100.0),
          child: Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/delivery_status.png"),
            ),)
          ),
        )),
      ],
    );
  }
}
