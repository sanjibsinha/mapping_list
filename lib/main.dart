import 'package:flutter/material.dart';
import './answers.dart';
import './questions.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex > 1) {
      _questionIndex = 0;
    }
  }

  var _questions = [
    'What is your favorite book?',
    'Who is your favorite author?',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(
          20.0,
        ),
        margin: EdgeInsets.all(
          10.0,
        ),
        child: Center(
          child: Column(
            children: [
              Questions(_questions[_questionIndex]),
              SizedBox(
                height: 10,
              ),
              Answers('Answer 1', _answerQuestion),
              Answers('Answer 2', _answerQuestion),
              Answers('Answer 3', _answerQuestion),
            ],
          ),
        ),
      ),
    );
  }
}
