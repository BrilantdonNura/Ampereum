import 'package:flutter/material.dart';
import 'package:smarthomev3/screens/dashboard/widgets/mon_fri.dart';
import 'package:smarthomev3/screens/dashboard/widgets/saturday.dart';
import 'package:smarthomev3/screens/dashboard/widgets/sunday.dart';

class WeeklyOptimalTemp extends StatelessWidget {
  const WeeklyOptimalTemp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Monday to Friday",
          style: TextStyle(color: Colors.white),
        ),
        MonToFri(),
        Text(
          "Saturday",
          style: TextStyle(color: Colors.white),
        ),
        Saturday(),
        Text(
          "Sunday",
          style: TextStyle(color: Colors.white),
        ),
        Sunday(),
      ]),
    );
  }
}
