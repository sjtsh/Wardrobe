import 'package:flutter/material.dart';

import './Logo.dart';
import './Navigation.dart';
import './Home.dart';
import './Floater.dart';

void main() {
  runApp(Wardrobe());
}

class Wardrobe extends StatefulWidget {
  @override
  _WardrobeState createState() => _WardrobeState();
}

class _WardrobeState extends State<Wardrobe> {
  int index = 2;

  void _setIndex(int nextIndex) {
    setState(() {
      index = nextIndex;
    });
    print(index);
  }

  Widget changeActivity(int index) {
    if (index == 2) {
      return Expanded(child: Home());
    } else if (index == 0) {
      return Expanded(
        child: Center(
          child: Text(
            "cart",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 40, color: Colors.white,),
          ),
        ),
      );
    } else if (index == 1) {
      return Expanded(
        child: Center(
          child: Text(
            "Search",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 40, color: Colors.white,),
          ),
        ),
      );
    }
    return Expanded(child: Text("NULL"));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: Floater(_setIndex),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/home_background.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(children: [
              Logo(Image.asset("assets/home_logo.png")),
              changeActivity(index),
              Navigation(_setIndex),
            ])
            ),
      ),
    );
  }
}
