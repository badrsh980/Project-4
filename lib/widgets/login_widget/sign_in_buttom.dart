import 'package:flutter/material.dart';
import 'package:project4/constant/constant.dart';
import 'package:project4/screens/home_screen.dart';

class ButtomWidget extends StatelessWidget {
  const ButtomWidget({super.key, required this.textButtom});

  final String textButtom;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 20),
      child: Center(
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const HomeScreen();
                },
              ),
            );
          },
          child: Container(
            height: 50,
            width: 360,
            decoration: BoxDecoration(
              color: appColorYellow,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
                child: Text(
              textButtom,
              style: TextStyle(fontSize: 15, color: appColorBlue),
            )),
          ),
        ),
      ),
    );
  }
}
