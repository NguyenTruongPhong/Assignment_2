import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetQuiz;

  String get textResult {
    String textResult;
    if (totalScore < 27) {
      textResult = 'Phong dep trai';
    } else if (totalScore < 28) {
      textResult = 'Phong sieu dep trai';
    } else {
      textResult = 'Phong dep trai la that';
    }
    return textResult;
  }

  Result({required this.totalScore, required this.resetQuiz});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(textResult,
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.red,
                    fontWeight: FontWeight.bold)),
            ElevatedButton(
              onPressed: resetQuiz,
              child: Text('Reset Quiz'),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                onPrimary: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
