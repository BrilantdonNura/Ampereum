import 'package:flutter/material.dart';
import 'package:smarthomev3/mqtt/test_mqtt.dart';
import 'package:smarthomev3/screens/dashboard/dash_board.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DashBoard(
      userName: "ITP",
    ),
  ));
}
