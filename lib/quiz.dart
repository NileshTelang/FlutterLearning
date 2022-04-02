import 'package:flutter/material.dart';
import './answers.dart';
import './questions.dart';

class quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int qindex;
  final Function corc;

  quiz(this.corc, this.qindex, this.questions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          (questions[qindex]['questionText'] as String),
        ),
        ...(questions[qindex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answers(() => corc(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
