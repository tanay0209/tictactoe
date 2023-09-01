import 'package:flutter/material.dart';
import 'package:tictactoe/responsive/responsive.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String buttonText;
  const CustomButton(
      {super.key, required this.onTap, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Responsive(
      child: Container(
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(color: Colors.blue, spreadRadius: 0, blurRadius: 5)
        ]),
        child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
              minimumSize: Size(
            width,
            50,
          )),
          child: Text(
            buttonText,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
