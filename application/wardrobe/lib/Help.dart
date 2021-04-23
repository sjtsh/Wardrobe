import 'package:flutter/material.dart';
import 'package:open_settings/open_settings.dart';


class Help extends StatefulWidget {

  static bool isSwitched = false;

  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Column(
        children: [
          Container(
            height: 235,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0x599CABC2),
                      borderRadius:
                      BorderRadius.all(Radius.circular(25)),
                      border:
                      Border.all(color: Colors.white, width: 2),
                    ),
                    child: Row(children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "  Invert Colors",
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                      Switch(activeColor: Colors.blue,
                        value: Help.isSwitched,
                        onChanged: (value) {
                          print("VALUE : $value");
                          setState(() {
                            Help.isSwitched = value;
                          });
                          ScaffoldMessenger.of(context)
                              .showSnackBar(SnackBar(content: const Text("Go home to see the changes")));
                        }
                        ),
                    ],
                    ),
                  ),
                ),
                TextButton(
                  onPressed: (){
                    OpenSettings.openDisplaySetting() ;
                  },
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0x599CABC2),
                      borderRadius:
                      BorderRadius.all(Radius.circular(25)),
                      border:
                      Border.all(color: Colors.white, width: 2),
                    ),
                    child: Container(
                      width: 120,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "  Change Font Size",
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: (){
                    OpenSettings.openAccessibilitySetting();
                  },
                  child: Container(
                    height: 60,
                    width: double.infinity,
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
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "  More Accessibility Settings",
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ],),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: Container())
        ],
      ),
    );
  }
}
