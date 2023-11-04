import 'package:flutter/material.dart';
import 'package:project4/constant/constant.dart';
import 'package:project4/screens/order_screen.dart';

PreferredSizeWidget AppBarWatchInfoScreen(BuildContext context) {
  return AppBar(
    centerTitle: true,
    title: const Text(
      "name watch",
      style: TextStyle(color: appColorBlue),
    ),
    backgroundColor: appColorWhite,
    elevation: 0,
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(
        Icons.arrow_back_ios_new_rounded,
        color: appColorBlue,
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 10),
        child: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (builder) {
                return const OrderScreen();
              }));
            },
            icon: const Icon(
              Icons.shopping_bag_outlined,
              color: appColorBlue,
              size: 30,
            )),
      )
    ],
  );
}
