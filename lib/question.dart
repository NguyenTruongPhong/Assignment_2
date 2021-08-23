import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final int questionIndex;
  final List questionList;

  Question({required this.questionIndex, required this.questionList});

  @override
  Widget build(BuildContext context) {
    return Text(
      questionList[questionIndex]['Question'],
      style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: Colors.amberAccent,
      ),
    );
  }
}
