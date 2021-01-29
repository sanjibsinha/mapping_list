import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final String yourAnswer;
  final Function answerQuestion;
  Answers(this.yourAnswer, this.answerQuestion);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
        yourAnswer,
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      color: Colors.blue,
      onPressed: answerQuestion,
    );
  }
}
