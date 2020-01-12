import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function callBack;
  final String answerText;
  Answer(this.callBack, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        color: Colors.blue[300],
        textColor: Colors.white,
        child: Text(
          answerText,
        ),
        onPressed: () => callBack(),
      ),
    );
  }
}
