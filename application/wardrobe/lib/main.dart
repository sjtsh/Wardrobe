import 'package:flutter/material.dart';

import './Logo.dart';
import './Navigation.dart';
import './Home.dart';
import './Floater.dart';
import './cart.dart';
import './Search.dart';
import './AboutUs.dart';

void main() {
  runApp(Wardrobe());
  }

class Wardrobe extends StatefulWidget {
  @override
  _WardrobeState createState() => _WardrobeState();
}

class _WardrobeState extends State<Wardrobe> {
  int index = 2;
  AssetImage background = AssetImage("assets/home_background.png");
  Image logo = Image.asset("assets/home_logo.png");

  void _setIndex(int nextIndex) {
    setState(() {
      index = nextIndex;

      if (index < 2) {
        background = AssetImage("assets/cart_background.png");
        logo = Image.asset("assets/cart_logo.png");
      } else {
        background = AssetImage("assets/home_background.png");
        logo = Image.asset("assets/home_logo.png");
      }
      print(index);
    });
  }

  Widget changeActivity(int index) {
    if (index == 2) {
      return Expanded(child: Home());
    } else if (index == 0) {
      return Expanded(child: Cart());
    } else if (index == 1) {
      return Expanded(child: Search());
    } else if(index == 20) {
      return Expanded(child: AboutUs());
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
                image: background,
                fit: BoxFit.cover,
              ),
            ),
            child: Column(children: [
              Logo(logo, _setIndex),
              changeActivity(index),
              Navigation(_setIndex),
            ]),),
      ),
    );
  }
}
