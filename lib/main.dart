import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion(int i) {
    setState(() {
      _questionIndex = i;
    });
    print('answer question');
  }

  void _answer() {
    setState(() {
      _questionIndex = 1;
    });
    print('answer question');
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var question = [
      {
        'questionText': 'Color',
        'answers': ['Black', 'Red', 'Green']
      },
      {
        'questionText': 'Animal',
        'answers': ['Rabbit', 'Snake', 'Lion']
      },
      {
        'questionText': 'Test',
        'answers': ['Test1 ', 'Test 2', 'Test 3']
      },
    ];
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: Column(
          children: [
            Question(
              question[_questionIndex]['questionText'],
            ),
            RaisedButton(
                child: Text('Popo voll'),
                onPressed: () {
                  _answerQuestion(2);
                }),
            ...(question[_questionIndex]['answers'] as List<String>).map((a) {
              return Answer(_answer, a);
            }).toList()
          ],
        ),
      ),
    );
  }
}
