import 'package:flutter/material.dart';
import 'package:tictactoe/screens/create_room_screen.dart';
import 'package:tictactoe/screens/join_room_screen.dart';
import 'package:tictactoe/widgets/custom_button.dart';
import 'package:tictactoe/widgets/custom_text.dart';

class MainMenuScreen extends StatelessWidget {
  static String routeName = '/main-menu';
  const MainMenuScreen({super.key});

  void createRoom(BuildContext context) {
    Navigator.pushNamed(context, CreateRoomScreen.routeName);
  }

  void joinRoom(BuildContext context) {
    Navigator.pushNamed(context, JoinRoomScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomText(
              shadows: [Shadow(blurRadius: 40, color: Colors.blue)],
              text: "Tic-Tac-Toe",
              fontSize: 60),
          const SizedBox(
            height: 40,
          ),
          CustomButton(
              onTap: () => createRoom(context), buttonText: "Create Room"),
          const SizedBox(height: 20),
          CustomButton(onTap: () => joinRoom(context), buttonText: "Join Room")
        ],
      )),
    );
  }
}
