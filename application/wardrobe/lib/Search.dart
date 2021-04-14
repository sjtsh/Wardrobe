import 'package:flutter/material.dart';

import './Product.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final products = [
    {"image": AssetImage("assets/Product2.png"), "name": "Skeleton", "price": 2500},
    {"image": AssetImage("assets/Product1.png"), "name": "Sweater", "price": 5000},
    {"image": AssetImage("assets/Product3.png"), "name": "Overcoat", "price": 8000},
  ];

  Widget searchResult = Container();

  void changeSearchResults(String text) {
    bool found = false;
    setState(() {
      print("function engaged");
      for (int i = 0; i < 3; i++) {
        if (products[i]["name"] == text) {
          print("search results found");
          searchResult = Product(
              products[i]["image"], products[i]["name"], products[i]["price"]);
          found = true;
          break;
        }
      }
        if(!found){
          print("search results not found");
          searchResult = Center(
            child: Text(
              "NO RESULTS",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
                ),
              ),
            );
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
                Icon(
                  Icons.search_outlined,
                  color: Colors.white,
                  size: 40,
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
