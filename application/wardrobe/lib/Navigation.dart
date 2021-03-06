import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {
  final Function setIndex;
  final String page;
  Navigation(this.setIndex, this.page);

  final int index = 0;

  Widget navigationBarItem1(page){
    if(page == "cart"){
      return Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(15)),
          border: Border.all(color: Colors.white, width: 2),),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Icon(
            Icons.shopping_cart_outlined,
            color: Colors.white,
          ),
        ),
      );
    }else {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          border: Border.all(color: Colors.black, width: 3),),
        child: Padding(
          padding: const EdgeInsets.all(3),
          child: Icon(
            Icons.shopping_cart_outlined,
            color: Colors.black,
          ),
        ),
      );
    }
  }

  Widget navigationBarItem2(page){
  if(page=="search"){
    return Container(
      decoration: BoxDecoration(
      color: Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(15)),
        border: Border.all(color: Colors.white, width: 2),),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Icon(
          Icons.search_sharp,
          color: Colors.white,
        ),
      ),
    );

  }else{
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        border: Border.all(color: Colors.black, width: 3),),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Icon(
          Icons.search_sharp,
          color: Colors.black,
        ),
      ),
    );
  }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 4),
        borderRadius: BorderRadius.only(topRight: Radius.circular(40), topLeft: Radius.circular(40))
        ),
      alignment: Alignment.bottomCenter,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.0),
          topRight: Radius.circular(40.0),
        ),
        child: BottomNavigationBar(
          iconSize: 30,
          backgroundColor: Color(0x809CABC2),
          unselectedFontSize: 0,
          selectedFontSize: 0,
          onTap: setIndex,
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0, right: 40.0),
                child: Semantics(
                  child: navigationBarItem1(page),
                  label: "Go to Cart",
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 5.0, bottom: 5.0, left: 40.0),
                child: Semantics(
                  child: navigationBarItem2(page),
                  label: "Go to Search",
                ),
              ),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}
