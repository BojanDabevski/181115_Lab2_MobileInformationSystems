import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClothesAnswer extends StatelessWidget {
  late String answerText;
  //Function tapped;
  VoidCallback tapped;
  ClothesAnswer(this.tapped,this.answerText);

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(onPressed: tapped,style: ElevatedButton.styleFrom(
        primary: Colors.green
    ),
      child: Text(answerText, style: TextStyle(fontSize: 20, color: Colors.red),),);
  }
}