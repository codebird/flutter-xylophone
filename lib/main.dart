import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Xylophone(),
      ),
    ),
  );
}

class Xylophone extends StatelessWidget {
  const Xylophone({Key key}) : super(key: key);

  void _playSound(int noteNum) {
    final audioPlayer = AudioCache();
    audioPlayer.play('note$noteNum.wav');
  }

  Widget _drawButton({Color color, int noteNum}) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
            _playSound(noteNum);
          },
          child: Text(''),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _drawButton(color: Colors.red, noteNum: 1),
              _drawButton(color: Colors.green, noteNum: 2),
              _drawButton(color: Colors.blue, noteNum: 3),
              _drawButton(color: Colors.teal, noteNum: 4),
              _drawButton(color: Colors.orange, noteNum: 5),
              _drawButton(color: Colors.purple, noteNum: 6),
              _drawButton(color: Colors.pink, noteNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
