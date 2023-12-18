import 'package:flutter/material.dart';
import 'package:smarthomev3/test.dart';

void main(List<String> args) {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TestMQTT(),
    )
  );
}
