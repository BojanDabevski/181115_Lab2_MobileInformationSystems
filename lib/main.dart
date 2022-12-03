import 'package:flutter/material.dart';
import './clothes_answer.dart';
import './clothes_question.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>{
  void _iWasTapped() {
    setState(() {
      _questionIndex+=1;
    });
    print('I was tapped');
  }
  var questions = [
    {'question':"Select Shirt", 'answer':['Blue V neck', 'Red Collared Shirt', 'White T-Shirt']},
    {'question':"Select Pants", 'answer':['Cargo Pants', 'Denim Jeans', 'Black Skinny Jeans']},
    {'question':"Select Jacket", 'answer':['Hoodie', 'Puffer', 'Bomber']},
    {'question':"Select Hat", 'answer':['Baseball cap', 'Beanie', 'No hat']},

  ];
  var _questionIndex = 0;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(title:'Hello World',
      home: Scaffold(
        appBar: AppBar(title: Text("181115_BojanDabevski_Lab2")),
        body: Column(
          children: [
            ClothesQuestion(questions[_questionIndex]['question'].toString()),
            ...(questions[_questionIndex]['answer'] as List<String>).map((answer) {
              return ClothesAnswer(_iWasTapped, answer);
            }),
          ],
        ),
      ),);
  }

}