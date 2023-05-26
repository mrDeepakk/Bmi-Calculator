import 'package:flutter/material.dart';

import 'CalculationScree.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var height = 160;
  var weight = 35;
  var age = 15;
  var bmi;
  var status;
  bool gender = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("BMI CALCULATOR"),
        ),
      ),
      // drawer: Drawer(),s
      body: Container(
        child: Column(children: [
          Expanded(
            child: Row(children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    onTap: () => {
                      gender = true,
                      setState(() {}),
                    },
                    child: Card(
                      elevation: gender ? 30 : 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: gender
                              ? Color.fromARGB(255, 9, 174, 219)
                              : Color.fromARGB(255, 7, 59, 101),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male,
                                size: 70,
                              ),
                              Text(
                                "Male",
                                style: TextStyle(fontSize: 30),
                              )
                            ]),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    onTap: () => {gender = false, setState(() => {})},
                    child: Card(
                      elevation: gender ? 0 : 30,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                      child: Container(
                        decoration: BoxDecoration(
                          color: gender
                              ? Color.fromARGB(255, 7, 59, 101)
                              : Color.fromARGB(255, 9, 174, 219),
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                        ),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female,
                                size: 70,
                              ),
                              Text(
                                "Female",
                                style: TextStyle(fontSize: 30),
                              ),
                            ]),
                      ),
                    ),
                  ),
                ),
              )
            ]),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                color: Color.fromARGB(255, 7, 59, 101),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Height",
                        style: TextStyle(fontSize: 35),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            height.toString(),
                            style: TextStyle(fontSize: 70),
                          ),
                          Text(
                            "cm",
                            style: TextStyle(fontSize: 30),
                          )
                        ],
                      ),
                      Slider(
                        min: 90,
                        max: 220,
                        divisions: 220,
                        activeColor: Color.fromARGB(255, 10, 125, 220),
                        inactiveColor: Color.fromARGB(151, 48, 112, 181),
                        onChanged: (double newVal) {
                          setState(() {
                            height = newVal.toInt();
                          });
                        },
                        value: height.toDouble(),
                      ),
                    ]),
              ),
            ),
          ),
          Expanded(
            child: Row(children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    color: Color.fromARGB(255, 7, 59, 101),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Weight",
                            style: TextStyle(fontSize: 30),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            weight.toString(),
                            style: TextStyle(fontSize: 40),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FloatingActionButton(
                                  onPressed: () {
                                    if (weight <= 10) {
                                      weight = 11;
                                    }
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  child: Icon(Icons.remove),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  child: Icon(Icons.add),
                                ),
                              )
                            ],
                          )
                        ]),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    color: Color.fromARGB(255, 7, 59, 101),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Age",
                            style: TextStyle(fontSize: 30),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            age.toString(),
                            style: TextStyle(fontSize: 40),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FloatingActionButton(
                                  onPressed: () {
                                    if (age <= 5) {
                                      age = 6;
                                    }
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  child: Icon(Icons.remove),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  child: Icon(Icons.add),
                                ),
                              )
                            ],
                          )
                        ]),
                  ),
                ),
              ),
            ]),
          ),
          Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 120,
                height: 50,
                decoration: BoxDecoration(),
                child: ElevatedButton(
                  onPressed: () async {
                    bmi = (weight * 10000) / (height * height);
                    if (bmi >= 18.5 && bmi <= 25.0) {
                      status = "Normal";
                    } else if (bmi < 18.5) {
                      status = "Underweight";
                    } else if (bmi > 25.0) {
                      status = "Overweight";
                    }
                    bmi = (bmi).toStringAsFixed(1);
                    await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Calculate(bmi, status),
                        ));
                  },
                  child: Text(
                    "Calculate",
                    style: TextStyle(fontSize: 19),
                  ),
                ),
              ))
        ]),
      ),
    );
  }
}
