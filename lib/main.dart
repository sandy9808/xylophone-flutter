import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

void playSound(int num) {
  final player = AudioCache();
  player.play('note$num.wav'); //or player.play('assets/note1.wav');
}

Expanded buildkey({Color colorOfBlock, int soundNumber}) {
  return Expanded(
    child: FlatButton(
      color: colorOfBlock,
      onPressed: () {
        playSound(soundNumber);
      }, 
      child: null,
    ),
  );
}

class _XylophoneAppState extends State<XylophoneApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(colorOfBlock: Colors.red, soundNumber: 1),
              buildkey(colorOfBlock: Colors.orange, soundNumber: 2),
              buildkey(colorOfBlock: Colors.yellow, soundNumber: 3),
              buildkey(colorOfBlock: Colors.green, soundNumber: 4),
              buildkey(colorOfBlock: Colors.teal, soundNumber: 5),
              buildkey(colorOfBlock: Colors.purple, soundNumber: 6),
            ],
          ),
        ),
      ),
    );
  }
}
