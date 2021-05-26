import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerFunc;
  final int questionIndex;

  Quiz(this.questions, this.answerFunc, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        //questions.map(here entering an anonymous function with param answer).toList()
        // ... is spread operator
        ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(answerFunc, answer);
        }).toList()
      ],
    );
  }
}
