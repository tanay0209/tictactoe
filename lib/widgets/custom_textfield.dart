import 'package:flutter/material.dart';
import 'package:tictactoe/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool readOnly;
  const CustomTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      this.readOnly = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.blue,
          blurRadius: 5,
          spreadRadius: 2,
        )
      ]),
      child: TextField(
        readOnly: readOnly,
        controller: controller,
        decoration: InputDecoration(
            fillColor: bgColor, filled: true, hintText: hintText),
      ),
    );
  }
}
