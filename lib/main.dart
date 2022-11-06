import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  int num;
  int playSound(int num) {
    final player = AudioPlayer();
    player.play(AssetSource('note$num.mp3'));
  }

  Expanded Key(int num, Color c) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          enableFeedback: false,
          backgroundColor: MaterialStateProperty.all(c),
        ),
        onPressed: () {
          playSound(num);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CircleAvatar(
              backgroundColor: Colors.black,
              radius: 7,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Key(1, Colors.purple),
              Key(2, Colors.indigo),
              Key(3, Colors.blue),
              Key(4, Colors.green),
              Key(5, Colors.yellow),
              Key(6, Colors.orange),
              Key(7, Colors.red),
            ],
          ),
        ),
      ),
    );
  }
}
