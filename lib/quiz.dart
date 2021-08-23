import 'package:flutter/material.dart';
import 'package:assignment_2/question.dart';
import 'package:assignment_2/answer.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final List questionList;
  final Function answerQuestion;

  Quiz(
      {required this.questionIndex,
      required this.questionList,
      required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
        child: Column(
          children: [
            Question(questionIndex: questionIndex, questionList: questionList),
            ...questionList[questionIndex]['Awnser'].map((answer) {
              return Answer(
                answer: answer['text'],
                answerQuestion: () => answerQuestion(answer['score']),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
