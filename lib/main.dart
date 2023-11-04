import 'package:flutter/material.dart';
import 'package:project4/screens/nav_bar_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavBar(),
    );
  }
}
