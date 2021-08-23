import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final VoidCallback answerQuestion;

  Answer({required this.answer, required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: answerQuestion,
        child: Text('$answer'),
        style: ElevatedButton.styleFrom(
          primary: Colors.red,
          onPrimary: Colors.green,
        ),
      ),
    );
  }
}
