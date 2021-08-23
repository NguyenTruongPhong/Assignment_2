import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final int questionIndex;
  final List questionList;

  Question({required this.questionIndex, required this.questionList});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 20.0, 0, 0),
        child: Column(
          children: [
            Text(
              questionList[questionIndex]['Question'],
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.amberAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
