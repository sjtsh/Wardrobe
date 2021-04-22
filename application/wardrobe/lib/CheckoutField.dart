import 'package:flutter/material.dart';

class CheckoutField extends StatefulWidget {

  static final controllerName = TextEditingController();
  static final controllerAddress = TextEditingController();
  static final controllerTel = TextEditingController();
  static bool validate1 = false;
  static bool validate2 = false;
  static bool validate3 = false;


  @override
  _CheckoutFieldState createState() => _CheckoutFieldState();

}

class _CheckoutFieldState extends State<CheckoutField> {

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
                  borderRadius:
                  BorderRadius.all(Radius.circular(25)),
                  border:
                  Border.all(color: Colors.white, width: 2),
                ),
                child: Row(children: [
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
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: 'eg: sajat shrestha',
                            errorText: CheckoutField.validate1 ? 'Name Can\'t Be Empty' : null,
                          ),
                          controller: CheckoutField.controllerName,
                          keyboardAppearance: Brightness.dark,
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                          ),),
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
                  borderRadius:
                  BorderRadius.all(Radius.circular(25)),
                  border:
                  Border.all(color: Colors.white, width: 2),
                ),
                child: Row(children: [
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
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'eg: Naxal',
                        errorText: CheckoutField.validate2 ? 'Address Can\'t Be Empty' : null,
                      ),
                      controller: CheckoutField.controllerAddress,
                      keyboardAppearance: Brightness.dark,
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),),
                  ),
                ],),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0x599CABC2),
                  borderRadius:
                  BorderRadius.all(Radius.circular(25)),
                  border:
                  Border.all(color: Colors.white, width: 2),
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
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'eg: 9808173521',
                          errorText: CheckoutField.validate3 ? 'Tel Can\'t Be Empty' : null,
                        ),
                        controller: CheckoutField.controllerTel,
                        keyboardAppearance: Brightness.dark,
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),),
                    ),
                  ),
                ],),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
