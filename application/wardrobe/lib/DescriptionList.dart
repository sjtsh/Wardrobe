import 'package:flutter/material.dart';

class DescriptionList extends StatelessWidget {
  final String attribute;
  final String behaviour;

  DescriptionList(this.attribute, this.behaviour);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          border: Border.all(color: Colors.white, width: 2),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  attribute,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Expanded(
                child: Text(behaviour,
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
