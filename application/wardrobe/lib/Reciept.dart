import 'package:flutter/material.dart';
import 'package:wardrobe/CheckoutField.dart';

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
            style: TextStyle(color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
          ),
        ),
        CheckoutField(),
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