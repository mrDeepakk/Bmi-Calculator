import 'package:bmiquick/homeScreen.dart';
import 'package:bmiquick/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      // home: Calculate(),
      initialRoute: myRoutes.HomeScreen,
      routes: {
        // "/": (context) => Homepage(),
        myRoutes.HomeScreen: (context) => Homepage(),
      },
    );
  }
}
