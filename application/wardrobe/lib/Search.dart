import 'package:flutter/material.dart';

import './Product.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final products = [
    {"image": AssetImage("assets/Product1.jpg"), "name": "sweater", "price": 3600},
    {"image": AssetImage("assets/Product2.jpg"), "name": "skeleton", "price": 2500},
    {"image": AssetImage("assets/Product3.jpg"), "name": "overcoat", "price": 8000},
    {"image": AssetImage("assets/Product4.jpg"), "name": "hat", "price": 1200},
    {"image": AssetImage("assets/Product5.jpg"), "name": "skirt", "price": 4000},
    {"image": AssetImage("assets/Product6.jpg"), "name": "jacket", "price": 6000},
  ];

  Widget searchResult = Container();

  void changeSearchResults(String text) {
    bool found = false;
    setState(() {
      for (int i = 0; i < 6; i++) {
        if (products[i]["name"] == text) {
          searchResult = Product(
              products[i]["image"], products[i]["name"], products[i]["price"]);
          found = true;
          break;
        }
      }
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Text(
            "Search",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 60,
            width: 300,
            alignment: Alignment.centerRight,
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border.all(color: Colors.white, width: 2),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.search_outlined,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                Expanded(
                  child: TextField(
                    onChanged: (String text) {
                      print(text);
                      changeSearchResults(text);
                    },
                    enableSuggestions: true,
                    minLines: null,
                    maxLines: null,
                    keyboardAppearance: Brightness.dark,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      backgroundColor: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        searchResult,
        // Expanded(child: Container()),
      ],
    );
  }
}
