import 'package:flutter/material.dart';
import 'package:smarthomev3/screens/dashboard/widgets/trv_container.dart';

class FloorDevices extends StatelessWidget {
  const FloorDevices({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Floor 1",
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:
                    8, // You can change this value based on your requirement
                crossAxisSpacing: 18.0,
                mainAxisSpacing: 10.0,
              ),
              itemCount: 15,
              itemBuilder: (context, index) {
                // This function is called for each item in the grid
                return TrvContainer();
              },
            ),
          ),
        ],
      ),
    );
  }
}
