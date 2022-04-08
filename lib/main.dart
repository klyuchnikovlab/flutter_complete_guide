// import library with StatelessWidget class
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var questionIndex = 0;

  void answerQuestion() {
    print('Answer chosen!');
    questionIndex = questionIndex + 1;
  }

  @override
  Widget build(BuildContext context) {
    print('method build is executed');
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('My First App')),
      body: Column(
        children: [
          //Text('The question!'),
          Text(questions[questionIndex]),
          RaisedButton(child: Text('Answer 1'), onPressed: answerQuestion),
          RaisedButton(child: Text('Answer 2'), onPressed: answerQuestion),
          RaisedButton(child: Text('Answer 3'), onPressed: answerQuestion),
        ],
      ),
    ));
  }
}
