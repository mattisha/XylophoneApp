import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNo) {
    final player = AudioCache();
    player.play('note$soundNo.wav'); 
  }
Expanded buildKey({Color color, int soundNo}) {
     return Expanded( child: Container(
          child: FlatButton(
          onPressed: (){
          playSound(soundNo);
          },
          color: color,child: null,
          ),),);}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
            buildKey(color: Colors.red,soundNo: 1),
            buildKey(color: Colors.orange[700],soundNo: 2),
            buildKey(color: Colors.purple,soundNo: 3),
            buildKey(color: Colors.teal,soundNo: 4),
            buildKey(color: Colors.yellow,soundNo: 5),
            buildKey(color: Colors.pinkAccent,soundNo: 6),
            buildKey(color: Colors.green,soundNo: 7),
            ],
          ),
        ),
      ),
    );
  }
}
