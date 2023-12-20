import 'package:flutter/material.dart';


class TrvContainer extends StatelessWidget {
  const TrvContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  
    Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.blue.withOpacity(0.5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.energy_savings_leaf_outlined,
                color: Color.fromARGB(255, 10, 251, 18).withOpacity(1),
                size: 32,
              ),
              SizedBox(
                width: 5,
              ),
            ],
          ),
          Flexible(
            child: Container(
              margin: EdgeInsets.only(left: 5),
              child: Text(
                "21.8 \u2103",
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 10, left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Text(
                      "Office Name",
                      maxLines: 1,
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                  Flexible(
                    child: Text(
                      "Heating Set To 21.8 \u2103",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
