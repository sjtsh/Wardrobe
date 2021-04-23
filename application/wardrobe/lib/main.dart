import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:app_settings/app_settings.dart';
import 'package:invert_colors/invert_colors.dart';

import './Logo.dart';
import './Navigation.dart';
import './Home.dart';
import './Floater.dart';
import './cart.dart';
import './Search.dart';
import './AboutUs.dart';
import './Checkout.dart';
import './CheckoutFooter.dart';
import './Reciept.dart';
import './Description.dart';
import './DescriptionFloater.dart';
import 'Help.dart';
import 'LogoBack.dart';

void main() {
  runApp(Wardrobe());
}

class Wardrobe extends StatefulWidget {
  @override
  WardrobeState createState() => WardrobeState();
}

class WardrobeState extends State<Wardrobe> {
  // _________________________values__________________________________
  int index = 2;
  int productIndex;
  AssetImage background = AssetImage("assets/home_background.png");
  Image logo = Image.asset("assets/home_logo.png");
  bool invert = false;

  //_________________________values__________________________________

  //_________________________Methods__________________________________


  Future<bool> _onBackPressed() {
    print("Back Pressed");
    _setIndex(2);
    return null;
  }

  void _setIndex(int nextIndex) {
    setState(() {
      invert = Help.isSwitched;
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

  void _setBackground(AssetImage image) {
    setState(() {
      background = image;
    });
  }

  void changeDetails(int productIndex) {
    print("details changed to index " + productIndex.toString());
    setState(() {
      this.productIndex = productIndex;
      index = 5;
    });
  }

  Widget changeNavigation(int index) {
    if (index == 3) {
      return CheckoutFooter(_setIndex);
    } else if (index == 4 || index == 6) {
      return Container();
    } else {
      return Navigation(_setIndex);
    }
  }

  Widget changeFloater(int index) {
    if (index == 3) {
      return null;
    }
    if (index == 5) {
      return DescriptionFloater();
    } else {
      return Floater(_setIndex);
    }
  }

  Widget changeLogo(int index) {
    if (index < 3) {
      return Logo(logo, _setIndex, index);
    } else {
      return LogoBack(logo, _setIndex);
    }
  }

  Widget changeActivity(int index) {
    if (index == 0) {
      return Expanded(child: Cart(_setIndex));
    } else if (index == 1) {
      return Expanded(child: Search());
    } else if (index == 2) {
      return Expanded(child: Home(changeDetails));
    } else if (index == 3) {
      return Expanded(child: Checkout());
    } else if (index == 4) {
      return Expanded(child: Reciept(_setIndex));
    } else if (index == 5) {
      return Expanded(child: Description(productIndex, _setIndex, _setBackground));
    } else if (index == 6) {
      return Expanded(child: Help(),
      );
    } else if (index == 20) {
      return Expanded(child: AboutUs());
    }
    return null;
  }

  Widget inverted() {
    if (invert) {
      return InvertColors(child:MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WillPopScope(
          onWillPop: _onBackPressed,
          child: Scaffold(
            floatingActionButton: changeFloater(index),
            floatingActionButtonLocation:
            FloatingActionButtonLocation.centerFloat,
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: background,
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(children: [
                changeLogo(index),
                changeActivity(index),
                changeNavigation(index),
              ]),
            ),
          ),
        ),
      )
      );
    } else {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WillPopScope(
          onWillPop: _onBackPressed,
          child: Scaffold(
            floatingActionButton: changeFloater(index),
            floatingActionButtonLocation:
            FloatingActionButtonLocation.centerFloat,
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: background,
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(children: [
                changeLogo(index),
                changeActivity(index),
                changeNavigation(index),
              ]),
            ),
          ),
        ),
      );
    }
  }
  //_________________________Methods__________________________________

  @override
  Widget build(BuildContext context) {
    return inverted();
  }
}

