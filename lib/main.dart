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

  final List _questionList = const [
    {
      'Question': 'What is your favorite sports?',
      'Awnser': [
        {'text': 'Footbal', 'core': 10},
        {'text': 'volleyball', 'core': 8},
        {'text': 'basketball', 'core': 7},
      ],
    },
    {
      'Question': 'What is your favorite colors?',
      'Awnser': [
        {'text': 'red', 'core': 10},
        {'text': 'yellow', 'core': 8},
        {'text': 'orange', 'core': 7},
      ],
    },
    {
      'Question': 'Who is your idol?',
      'Awnser': [
        {'text': 'Ronaldo', 'core': 10},
        {'text': 'Ronaldo', 'core': 10},
        {'text': 'Ronaldo', 'core': 10},
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
          body: Question(
            questionIndex: _questionIndex,
            questionList: _questionList,
          )),
    );
  }
}
