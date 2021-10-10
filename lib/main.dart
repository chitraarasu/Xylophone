import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(String num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Widget buildButton(Color color, val) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound('$val');
        },
        child: Text(''),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
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
              buildButton(Colors.red, 1),
              buildButton(Colors.orange, 2),
              buildButton(Colors.yellow, 3),
              buildButton(Colors.teal, 4),
              buildButton(Colors.green, 5),
              buildButton(Colors.lightBlueAccent, 6),
              buildButton(Colors.blueAccent, 7),
            ],
          ),
        ),
      ),
    );
  }
}
