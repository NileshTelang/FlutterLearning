import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final selectHandler;
  final answerText;
  Answers(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Container(
        color: Colors.blue,
        child: ElevatedButton(
          child: Text(answerText),
          onPressed: selectHandler,
        ),
      ),
    );
  }
}
