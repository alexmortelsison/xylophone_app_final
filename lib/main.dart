import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              KeyWidget(color: Colors.red, soundNumber: 1),
              KeyWidget(color: Colors.orange, soundNumber: 2),
              KeyWidget(color: Colors.yellow, soundNumber: 3),
              KeyWidget(color: Colors.green, soundNumber: 4),
              KeyWidget(color: Colors.blue, soundNumber: 5),
              KeyWidget(color: Colors.indigo, soundNumber: 6),
              KeyWidget(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
 }
}

class KeyWidget extends StatelessWidget {
 final Color color;
 final int soundNumber;

 const KeyWidget({super.key, required this.color, required this.soundNumber});

 void playsound() {
    final player = AudioPlayer();
    player.play(
      AssetSource('note$soundNumber.wav'),
    );
 }

 @override
 Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(color),
        ),
        onPressed: () {
          playsound();
        },
        child: const Text(''),
      ),
    );
 }
}