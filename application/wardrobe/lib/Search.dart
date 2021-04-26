import 'package:flutter/material.dart';

import './Product.dart';
import 'main.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {

  Widget searchResult = Container();

  void changeSearchResults(String text) {
    setState(() {
      for (int i = 0; i < 6; i++) {
        if (Wardrobe.names[i] == text) {
          searchResult = Product(
              Wardrobe.img[i], Wardrobe.names[i], Wardrobe.price[i]);
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
                  child: Semantics(
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
                    label: "Type what to search for",
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
