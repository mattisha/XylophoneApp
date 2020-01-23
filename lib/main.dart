import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNo) {
    final player = AudioCache();
    player.play('note$soundNo.wav');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.stretch,
            
            children: <Widget>[
              
              Expanded(
                              child: Container(
                  child: FlatButton(
                    onPressed: (){
                      playSound(1);
                    },
                    color: Colors.red, child: null,
                  ),
                ),
              ),
             // SizedBox(height: 10.0,),
              Expanded(
                              child: Container(
                  child: FlatButton(
                    onPressed: (){
                      playSound(2);
                    },
                    color: Colors.orange[300], child: null,
                  ),
                ),
              ),
              //SizedBox(height: 10.0,),
              Expanded(
                              child: Container(
                  child: FlatButton(
                    onPressed: (){
                      playSound(3);
                    },
                    color: Colors.yellow, child: null,
                  ),
                ),
              ),
              //SizedBox(height: 10.0,),
              Expanded(
                  child: Container(
                  child: FlatButton(
                    onPressed: (){
                      playSound(4);
                    },
                    color: Colors.green, child: null,
                  ),
                ),
              ),
              //SizedBox(height: 10.0,),
              Expanded(
                  child: Container(
                  child: FlatButton(
                    onPressed: (){
                      playSound(5);
                    },
                    color: Colors.green[900], child: null,
                  ),
                ),
              ),
             // SizedBox(height: 10.0,),
              Expanded(
                  child: Container(
                  child: FlatButton(
                    onPressed: (){
                      playSound(6);
                    },
                    color: Colors.blue, child: null,
                  ),
                ),
              ),
              //SizedBox(height: 10.0,),
              Expanded(
                 child: Container(
                  child: FlatButton(
                    onPressed: (){
                      playSound(7);
                    },
                    color: Colors.purple, child: null,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
