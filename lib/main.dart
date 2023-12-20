import 'package:flutter/material.dart';
import 'package:smarthomev3/mqtt/test_mqtt.dart';
import 'package:smarthomev3/screens/dashboard/dash_board.dart';
import 'package:provider/provider.dart';
import 'package:smarthomev3/test/provider_test.dart';

void main(List<String> args) {

  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ProviderTest())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DashBoard(
          userName: "ITP",
        ),
      )));
}
