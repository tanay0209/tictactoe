import 'package:flutter/material.dart';
import 'package:tictactoe/widgets/custom_button.dart';

class MainMenuScreen extends StatelessWidget {
  static String routeName = '/main-menu';
  const MainMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(onTap: () {}, buttonText: "Create Room"),
        const SizedBox(height: 20),
        CustomButton(onTap: () {}, buttonText: "Join Room")
      ],
    ));
  }
}
