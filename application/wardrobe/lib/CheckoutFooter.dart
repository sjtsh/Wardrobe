import 'package:flutter/material.dart';
import 'package:wardrobe/CheckoutField.dart';


// import 'package:esewa_pnp/esewa.dart';
// import 'package:esewa_pnp/esewa_pnp.dart';


class CheckoutFooter extends StatelessWidget {

  // final ESewaConfiguration _configuration = ESewaConfiguration(
  //     clientID: "JB0BBQ4aD0UqIThFJwAKBgAXEUkEGQUBBAwdOgABHD4DChwUAB0R",
  //     secretKey: "BhwIWQQADhIYSxILExMcAgFXFhcOBwAKBgAXEQ==",
  //     environment: ESewaConfiguration.ENVIRONMENT_TEST
  // );
  //
  // ESewaPayment _payment = ESewaPayment(
  //     amount: 600,
  //     productName: "ProductName",
  //     productID: "ProductID",
  //     callBackURL: "https://callbackurl.com"
  // );

  final Function setIndex;

  CheckoutFooter(this.setIndex);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10.0),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  color: Color(0xFF9CC3FF),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextButton(
                    onPressed: () {
                    setIndex(0);
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: const Text("CANCELLED")));
                      print("CANCELLED");
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF9CC3FF),
                      onPrimary: Colors.black,
                    ),
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
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  color: Color(0xFF9CC3FF),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextButton(
                    onPressed: () {
                      bool v = true;
                      print("CONFIRMED");
                      if(CheckoutField.controllerName.text.isEmpty){
                        CheckoutField.validate1 = true;
                        v = false;
                        setIndex(3);
                      }
                      if(CheckoutField.controllerAddress.text.isEmpty){
                        CheckoutField.validate2 = true;
                        v = false;
                        setIndex(3);
                      }
                      if(CheckoutField.controllerTel.text.isEmpty){
                        CheckoutField.validate3 = true;
                        v = false;
                        setIndex(3);
                      }
                      if(v==true){
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: const Text("YOUR PACKAGE IS ON ITS WAY TO YOU")));
                        setIndex(4);
                      }
                      //
                      // try {
                      //   final _res = ESewaPnp(configuration: _configuration).initPayment(payment: _payment);
                      //   // Handle success
                      // } on ESewaPaymentException catch(e) {
                      //   // Handle error
                      // }

                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF9CC3FF),
                      onPrimary: Colors.black,
                    ),
                    child: Text(
                      "PAY OFF",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
