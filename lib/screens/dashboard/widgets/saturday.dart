import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Saturday extends StatelessWidget {
  const Saturday({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      height: 40,
      width: 250,
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(10)),
            child: Text(
              "14 \u2103",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            margin: EdgeInsets.only(left: 3),
            height: 30,
            width: 80,
          ),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(10)),
            child: Text(
              "22 \u2103",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            margin: EdgeInsets.only(left: 5),
            height: 30,
            width: 100,
          ),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(10)),
            child: Text(
              "14 \u2103",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            margin: EdgeInsets.only(left: 5),
            height: 30,
            width: 50,
          ),
        ],
      ),
    );
  }
}
