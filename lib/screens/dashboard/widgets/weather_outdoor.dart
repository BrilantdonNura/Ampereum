import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:smarthomev3/test/provider_test.dart';
import 'package:provider/provider.dart';

class WeatherOutdoor extends StatelessWidget {
  WeatherOutdoor({super.key});



  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderTest>(
      builder: (context, myData, child) {
        return Container(
            margin: EdgeInsets.all(5.0),
            padding: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.5),
              borderRadius: BorderRadius.circular(11),
            ),
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Weather Today",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Prizren",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      "clouds.png",
                      height: 50,
                      width: 50,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "${myData.latestMessage} \u2103",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                  ],
                ),
              ],
            ));
      },
    );
  }
}
