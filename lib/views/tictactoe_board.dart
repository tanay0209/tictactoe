import 'package:flutter/material.dart';

class TicTacToeBoard extends StatefulWidget {
  const TicTacToeBoard({super.key});

  @override
  State<TicTacToeBoard> createState() => _TicTacToeBoardState();
}

class _TicTacToeBoardState extends State<TicTacToeBoard> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: size.height * 0.7, maxWidth: 500),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
          itemCount: 9,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.white24)),
              child: const Center(
                child: Text(
                  'X',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 100,
                      shadows: [
                        const Shadow(blurRadius: 40, color: Colors.blue)
                      ]),
                ),
              ),
            );
          }),
    );
  }
}
