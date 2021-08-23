import 'package:assignment_2/answer.dart';
import 'package:assignment_2/quiz.dart';
import 'package:flutter/material.dart';
import 'package:assignment_2/question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    print(_totalScore);
    setState(() {
      _questionIndex++;
      print('setState is call');
    });
  }

  final List _questionList = const [
    {
      'Question': 'What is your favorite sports?',
      'Awnser': [
        {'text': 'Footbal', 'score': 10},
        {'text': 'volleyball', 'score': 8},
        {'text': 'basketball', 'score': 7},
      ],
    },
    {
      'Question': 'What is your favorite colors?',
      'Awnser': [
        {'text': 'red', 'score': 10},
        {'text': 'yellow', 'score': 8},
        {'text': 'orange', 'score': 7},
      ],
    },
    {
      'Question': 'Who is your idol?',
      'Awnser': [
        {'text': 'Ronaldo', 'score': 10},
        {'text': 'Ronaldo', 'score': 10},
        {'text': 'Ronaldo', 'score': 10},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment_2'),
          centerTitle: true,
        ),
        body: Quiz(
            questionIndex: _questionIndex,
            questionList: _questionList,
            answerQuestion: _answerQuestion),
      ),
    );
  }
}
