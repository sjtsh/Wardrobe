import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 150.0),
            child: Text(
              "SAJAT SHRESTHA",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontStyle: FontStyle.italic),
            ),
          ),
          Text("Contact Me at NP03A190211@heraldcollege.edu.np",
              textAlign: TextAlign.center,
              style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontStyle: FontStyle.italic),
          )
        ],
      ),
    );
  }
}
