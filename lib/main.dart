import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const Xylophone());


class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);
  // main functionality of button
  Expanded ATextButton({required int note_number,required Color color}){
    return Expanded(
      child: TextButton(onPressed:() {
        AudioCache player = AudioCache();
        player.play('assets_note$note_number.wav');
      },
          style: TextButton.styleFrom(
              backgroundColor: color
          ),
          child: Text('')
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children:[
                  ATextButton(note_number: 1,color: Colors.orange),
                  ATextButton(note_number: 2, color: Colors.yellow),
                  ATextButton(note_number: 3, color: Colors.green),
                  ATextButton(note_number: 4, color: Colors.blue),
                  ATextButton(note_number: 5, color: Colors.white)
                ]
              )),),);}}
