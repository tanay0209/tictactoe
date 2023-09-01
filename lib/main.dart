import 'package:flutter/material.dart';
import 'package:tictactoe/screens/main_menu_screen.dart';
import 'utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Tic-Tac-Toe",
        theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: bgColor),
        routes: {MainMenuScreen.routeName: (context) => const MainMenuScreen()},
        home: const MainMenuScreen());
  }
}