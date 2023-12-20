import 'package:flutter/material.dart';

class MonitorType extends StatefulWidget {
  const MonitorType({super.key});

  @override
  State<MonitorType> createState() => _MonitorTypeState();
}

class _MonitorTypeState extends State<MonitorType> {
  int button_selected = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.5),
        borderRadius: BorderRadius.circular(11),
      ),
      child: Column(
        children: [
          Container(
            width: 100,
            margin: EdgeInsets.symmetric(vertical: 5.0),
            child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: button_selected == 0
                      ? const Color.fromARGB(255, 120, 192, 251)
                      : Colors.blue.withOpacity(0.5),
                ),
                onPressed: () {
                  button_selected = 0;
                  setState(() {});
                },
                child: Text(
                  "Energy",
                  style: TextStyle(color: Colors.white),
                )),
          ),
          Container(
            width: 100,
            margin: EdgeInsets.symmetric(vertical: 10.0),
            child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: button_selected == 1
                      ? const Color.fromARGB(255, 120, 192, 251)
                      : Colors.blue.withOpacity(0.5),
                ),
                onPressed: () {
                  button_selected = 1;
                  setState(() {});
                },
                child: Text(
                  "Heating",
                  style: TextStyle(color: Colors.white),
                )),
          ),
          Container(
            width: 100,
            margin: EdgeInsets.symmetric(vertical: 5.0),
            child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: button_selected == 2
                      ? const Color.fromARGB(255, 120, 192, 251)
                      : Colors.blue.withOpacity(0.5),
                ),
                onPressed: () {
                  button_selected = 2;
                  setState(() {});
                },
                child: Text(
                  "Devices",
                  style: TextStyle(color: Colors.white),
                )),
          ),
        ],
      ),
    );
  }
}
