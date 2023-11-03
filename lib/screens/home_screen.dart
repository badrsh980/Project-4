import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Text(
          "logo page",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
