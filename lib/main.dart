import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playAudio(int audioNumber) {
    final player = AudioCache();
    player.play('note$audioNumber.wav');
  }

  Expanded buildKey({int keyNumber, Color color}) => Expanded(
        child: FlatButton(
          color: color,
          onPressed: () {
            playAudio(keyNumber);
          },
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(keyNumber: 1, color: Colors.red),
              buildKey(keyNumber: 2, color: Colors.orange),
              buildKey(keyNumber: 3, color: Colors.yellow),
              buildKey(keyNumber: 4, color: Colors.green),
              buildKey(keyNumber: 5, color: Colors.teal),
              buildKey(keyNumber: 6, color: Colors.blue),
              buildKey(keyNumber: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
