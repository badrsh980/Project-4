import 'package:flutter/material.dart';
import 'package:project4/constant/constant.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget(
      {super.key,
      required this.hintText,
      required this.labelText,
      required this.isObscureText,
      required this.controller,
      this.hasSuffix});

  final String hintText;

  final String labelText;

  final TextEditingController controller;

  final bool isObscureText;

  final Icon? hasSuffix;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: TextField(
        controller: controller,
        obscureText: isObscureText,
        decoration: InputDecoration(
          // suffix: Icon(
          //   Icons.mail_outline_rounded,
          // ),
          labelText: labelText,
          labelStyle: const TextStyle(
            color: appColorDarkGrey,
          ),
          hintText: hintText,
          hintStyle: const TextStyle(color: Color.fromARGB(58, 143, 143, 143)),
          filled: true,
          fillColor: const Color.fromARGB(153, 255, 255, 255),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: appColorDarkWhite),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: appColorDarkWhite),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
