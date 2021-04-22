import 'package:flutter/material.dart';

import 'CheckoutField.dart';

class RecieptField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          border: Border.all(color: Colors.white, width: 2),
        ),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0x599CABC2),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 120,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "  NAME:",
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          CheckoutField.controllerName.text,
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0x599CABC2),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 120,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "  ADDRESS:",
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          CheckoutField.controllerAddress.text,
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0x599CABC2),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 120,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "  TEL:",
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            CheckoutField.controllerTel.text,

                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
