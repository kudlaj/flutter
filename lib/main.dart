import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final _question = const [
    {
      'questionText': 'Papa',
      'answers': ['Black', 'Red', 'Green']
    },
    {
      'questionText': 'Mama',
      'answers': ['Rabbit', 'Snake', 'Lion']
    },
    {
      'questionText': 'Eline',
      'answers': ['Test1 ', 'Test 2', 'Test 3']
    },
    {
      'questionText': 'Laia',
      'answers': ['Test1 ', 'Test 2', 'Test 3']
    },
  ];

  void _answerQuestion(int i) {
    setState(() {
      _questionIndex = i;
    });
    print('answer question');
  }

  void _answer() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _question.length) {
      //
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: _questionIndex < _question.length
            ? Quiz(
                callBack: _answer,
                questions: _question,
                questionIndex: _questionIndex,
              )
            : Result(),
      ),
    );
  }
}
