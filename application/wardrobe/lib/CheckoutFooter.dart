import 'package:flutter/material.dart';

class CheckoutFooter extends StatelessWidget {

  final Function setIndex;

  CheckoutFooter(this.setIndex);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () {
              setIndex(0);
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: const Text("CANCELLED")));
                print("CANCELLED");
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0x80ECF0F3).withOpacity(0.8),
                onPrimary: Colors.black,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "CANCEL",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: const Text("YOUR PACKAGE IS ON ITS WAY TO YOU")));
                print("CONFIRMED");
                setIndex(4);
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0x80ECF0F3).withOpacity(0.8),
                onPrimary: Colors.black,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "CONFIRM",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
