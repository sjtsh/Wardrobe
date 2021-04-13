import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {

  final Function setIndex;
  Navigation(this.setIndex);

  final int index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          iconSize: 40,
          backgroundColor: Color(0x80ECF0F3).withOpacity(0.5),
          unselectedFontSize: 0,
          selectedFontSize: 0,
          onTap: setIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search_sharp,
                color: Colors.black,
              ),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}
