import 'package:flutter/material.dart';
import 'package:project4/constant/constant.dart';

PreferredSizeWidget AppBarWidget(BuildContext context, String title) {
  return AppBar(
      centerTitle: true,
      title: Text(
        title,
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
          )));
}
