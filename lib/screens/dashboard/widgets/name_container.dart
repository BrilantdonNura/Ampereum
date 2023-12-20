import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class NameContainer extends StatelessWidget {
  const NameContainer({required this.userName, super.key});
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5.0),
      width: 370,
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.5),
        borderRadius: BorderRadius.circular(11),
      ),
      child: Text(
        userName,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 30.0, color: Colors.white),
      ),
    );
  }
}
