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

// void buildkey() {
//   Expanded(
//     child: FlatButton(
//       color: Colors.red,
//       onPressed: () {
//         playSound(1);
//       },
//     ),
//   );
// }

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
              // buildkey()
              // buildkey()
              // buildkey()
              // buildkey()
              // buildkey()
              // buildkey()
              Expanded(
                child: FlatButton(
                  color: Colors.red,
                  onPressed: () {
                    playSound(1);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.orange,
                  onPressed: () {
                    playSound(2);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.yellow,
                  onPressed: () {
                    playSound(3);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.green,
                  onPressed: () {
                    playSound(4);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.teal,
                  onPressed: () {
                    playSound(5);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.blue,
                  onPressed: () {
                    playSound(6);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
