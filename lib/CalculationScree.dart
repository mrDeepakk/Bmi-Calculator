// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Calculate extends StatelessWidget {
  var ubmi;
  var status;
  // Colors colorll=Colors.red as Colors;

  color() {
    if (status == "Normal") {
      return Colors.green;
    } else if (status == "Underweight") {
      return Colors.blueAccent;
    } else {
      return Colors.red;
    }
  }

  Calculate(this.ubmi, this.status);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 243, 244),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 7, 59, 101),
        title: Text("BMI CALCULATOR"),
      ),
      body: Center(
        child: Card(
          elevation: 30,
          child: Container(
            height: 300,
            width: 350,
            color: Color.fromARGB(255, 241, 243, 244),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 15),
                          child: Text(
                            "$ubmi",
                            style: TextStyle(
                                fontSize: 63, color: Colors.deepOrangeAccent),
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              "BMI",
                              style:
                                  TextStyle(fontSize: 53, color: Colors.orange),
                            ),
                            Text(
                              "$status",
                              style: TextStyle(color: color(), fontSize: 12),
                            )
                          ],
                        )
                      ],
                    ),
                    Container(
                      height: 3.5,
                      color: Colors.blueGrey,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        "Information",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 35, 67, 248)),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: "$status" == "Underweight"
                                ? Text(
                                    "Underweight",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.blueAccent),
                                  )
                                : Text(
                                    "Underweight",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.blueAccent),
                                  ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: "$status" == "Normal"
                              ? Text(
                                  "Normal",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.green),
                                )
                              : Text(
                                  "Normal",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.green),
                                ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: "$status" == "Overweight"
                              ? Text(
                                  "Overweight",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.red),
                                )
                              : Text(
                                  "Overweight",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.red),
                                ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 4,
                          width: 106,
                          color: Colors.blue,
                        ),
                        Container(
                          height: 4,
                          width: 106,
                          color: Colors.green,
                        ),
                        Container(
                          height: 4,
                          width: 106,
                          color: Colors.red,
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "16.0",
                            style: TextStyle(
                                color: Color.fromARGB(255, 22, 92, 94),
                                fontSize: 14),
                          ),
                          Text(
                            "18.5",
                            style: TextStyle(
                                color: Color.fromARGB(255, 22, 92, 94),
                                fontSize: 14),
                          ),
                          Text(
                            "25.0",
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromARGB(255, 22, 92, 94)),
                          ),
                          Text(
                            "40.0",
                            style: TextStyle(
                                color: Color.fromARGB(255, 22, 92, 94),
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        height: 20,
                        width: 140,
                        child: Text(
                          "Powered by BMI",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 255, 187, 16),
                          ),
                        ),
                      ),
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
