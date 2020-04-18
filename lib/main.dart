import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  playAudio(int position)
  {
    final player = AudioCache();
    player.play('note$position.wav');
  }

  buildKey(int soundNumber, Color color, String title) =>  Expanded(
        child: FlatButton(
        onPressed: (){
        playAudio(soundNumber);
      },
      color: color, child: Text(title, style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 17.0),),
      )
    );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(1, Colors.red, 'This is first note'),
              buildKey(2, Colors.yellow, 'This is second note'),
              buildKey(3, Colors.green, 'This is third note'),
              buildKey(4, Colors.teal, 'This is fourth note'),
              buildKey(5, Colors.pink, 'This is fifth note'),
              buildKey(6, Colors.deepPurple, 'This is sixth note'),
            ],
          )
        ),
      ),
    );
  }
}
