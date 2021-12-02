import "package:flutter/material.dart";

import "./answer.dart";
import "./question.dart";

class Quiz extends StatelessWidget {
  final List questions;
  final VoidCallback clickHandler;
  final int qIndex;

  Quiz(
      {required this.questions,
      required this.clickHandler,
      required this.qIndex});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Question(questions[qIndex]['questionText']),
      ...questions[qIndex]['answers']
          .map((answer) => Answer(clickHandler, answer['text'], answer['score'] as int))
    ]);
  }
}
