import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClothesQuestion extends StatelessWidget {

  String _questionContent;
  ClothesQuestion(this._questionContent);
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(5),
        child: Text(_questionContent,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, color: Colors.blue),));
  }
}