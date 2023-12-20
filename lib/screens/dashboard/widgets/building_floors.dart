import 'package:flutter/material.dart';

class BuildinFloors extends StatefulWidget {
  const BuildinFloors({super.key});

  @override
  State<BuildinFloors> createState() => _BuildinFloorsState();
}

class _BuildinFloorsState extends State<BuildinFloors> {
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 180,
            margin: EdgeInsets.symmetric(vertical: 5.0),
            child: TextButton(
                style: TextButton.styleFrom(
                  alignment: Alignment.centerLeft,
                  backgroundColor: button_selected == 0
                      ? const Color.fromARGB(255, 120, 192, 251)
                      : Colors.blue.withOpacity(0.5),
                ),
                onPressed: () {
                  button_selected = 0;
                  setState(() {});
                },
                child: Text(
                  "Entire Building",
                  style: TextStyle(color: Colors.white),
                )),
          ),
          Container(
            width: 120,
            margin: EdgeInsets.symmetric(vertical: 10.0),
            child: TextButton(
                style: TextButton.styleFrom(
                  alignment: Alignment.centerLeft,
                  backgroundColor: button_selected == 1
                      ? const Color.fromARGB(255, 120, 192, 251)
                      : Colors.blue.withOpacity(0.5),
                ),
                onPressed: () {
                  button_selected = 1;
                  setState(() {});
                },
                child: Text(
                  "Floor 1",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )),
          ),
          Container(
            width: 120,
            margin: EdgeInsets.symmetric(vertical: 5.0),
            child: TextButton(
                style: TextButton.styleFrom(
                  alignment: Alignment.centerLeft,
                  backgroundColor: button_selected == 2
                      ? const Color.fromARGB(255, 120, 192, 251)
                      : Colors.blue.withOpacity(0.5),
                ),
                onPressed: () {
                  button_selected = 2;
                  setState(() {});
                },
                child: Text(
                  "Floor 2",
                  style: TextStyle(color: Colors.white),
                )),
          ),
          Container(
            width: 120,
            margin: EdgeInsets.symmetric(vertical: 5.0),
            child: TextButton(
                style: TextButton.styleFrom(
                  alignment: Alignment.centerLeft,
                  backgroundColor: button_selected == 3
                      ? const Color.fromARGB(255, 120, 192, 251)
                      : Colors.blue.withOpacity(0.5),
                ),
                onPressed: () {
                  button_selected = 3;
                  setState(() {});
                },
                child: Text(
                  "Floor 3",
                  style: TextStyle(color: Colors.white),
                )),
          ),
        ],
      ),
    );
  }
}
