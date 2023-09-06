import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tictactoe/provider/room_data_provider.dart';
import 'package:tictactoe/widgets/custom_textfield.dart';

class WaitingLobby extends StatefulWidget {
  const WaitingLobby({super.key});

  @override
  State<WaitingLobby> createState() => _WaitingLobbyState();
}

class _WaitingLobbyState extends State<WaitingLobby> {
  late TextEditingController _roomIdController;
  @override
  void initState() {
    super.initState();
    _roomIdController = TextEditingController(
        text: Provider.of<RoomDataProvider>(context, listen: false)
            .roomData['_id']);
  }

  @override
  void dispose() {
    super.dispose();
    _roomIdController.dispose();
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Waiting for a player to Join"),
        const SizedBox(
          height: 20,
        ),
        CustomTextField(
          controller: _roomIdController,
          hintText: "",
          readOnly: true,
        )
      ],
    );
  }
}
