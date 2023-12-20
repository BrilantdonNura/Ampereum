import 'package:flutter/material.dart';
import 'package:smarthomev3/screens/dashboard/widgets/building_floors.dart';
import 'package:smarthomev3/screens/dashboard/widgets/monitor_type.dart';
import 'package:smarthomev3/screens/dashboard/widgets/name_container.dart';
import 'package:smarthomev3/screens/dashboard/widgets/weather_outdoor.dart';
import 'package:smarthomev3/screens/dashboard/widgets/weekly_optimal_temp.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({required this.userName, super.key});
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NameContainer(userName: userName),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                BuildinFloors(),
                SizedBox(
                  width: 10.0,
                ),
                MonitorType(),
              ],
            ),
            const WeatherOutdoor(),
            WeeklyOptimalTemp(),
          ],
        ));
  }
}
