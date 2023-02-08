import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());
final player = AudioPlayer();
sing(int soundNumber) {
  player.play(AssetSource('note$soundNumber.wav'));
}

buildKey(int soundNumber, Color color) {
  return Expanded(
      child: TextButton(
    onPressed: () {
      sing(soundNumber);
    },
    style: TextButton.styleFrom(
      backgroundColor: color,
    ),
  ));
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          buildKey(1, Colors.red),
          buildKey(2, Colors.yellow),
          buildKey(3, Colors.orange),
          buildKey(4, Colors.blue),
          buildKey(5, Colors.purple),
          buildKey(6, Colors.indigo),
          buildKey(7, Colors.green)
        ]),
      ),
    ));
  }
}
