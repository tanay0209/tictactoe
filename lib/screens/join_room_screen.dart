import 'package:flutter/material.dart';
import 'package:tictactoe/responsive/responsive.dart';
import 'package:tictactoe/widgets/custom_button.dart';
import 'package:tictactoe/widgets/custom_text.dart';
import 'package:tictactoe/widgets/custom_textfield.dart';

class JoinRoomScreen extends StatefulWidget {
  static String routeName = '/join-room';
  const JoinRoomScreen({super.key});

  @override
  State<JoinRoomScreen> createState() => _JoinRoomScreenState();
}

class _JoinRoomScreenState extends State<JoinRoomScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _gameIDController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _gameIDController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: ModalRoute.of(context)!.canPop
              ? Container(
                  margin: const EdgeInsets.all(10),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 30,
                      )),
                )
              : null,
        ),
        body: Responsive(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomText(
                    shadows: [Shadow(blurRadius: 40, color: Colors.blue)],
                    text: "Join Room",
                    fontSize: 70),
                SizedBox(
                  height: size.height * 0.08,
                ),
                CustomTextField(
                    controller: _nameController,
                    hintText: "Enter your nickname"),
                SizedBox(
                  height: size.height * 0.045,
                ),
                CustomTextField(
                    controller: _gameIDController,
                    hintText: "Enter the Game ID"),
                SizedBox(
                  height: size.height * 0.03,
                ),
                CustomButton(onTap: () {}, buttonText: "Create")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
