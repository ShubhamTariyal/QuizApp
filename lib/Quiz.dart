import 'package:flutter/material.dart';

import 'Question.dart';
import 'Answer.dart';

class Quiz extends StatelessWidget {
  final String question;
  final List<Map<String, Object>> answers;
  final int questionIndex;
  final Function handler;

  Quiz({
    @required this.question,
    @required this.answers,
    @required this.questionIndex,
    @required this.handler,
  });

  @override
  Widget build(BuildContext context) {
    int answerIndex = 0;
    return Column(
      children: [
        Question(question, questionIndex),
        ...(answers.map((answer) {
          return Answer(
            answer,
            answerIndex++,
            handler,
          );
        }).toList()),
        // Answer(
        //   answers[1],
        //   1,
        //   handler,
        // ),
        // Answer(
        //   answers[2],
        //   2,
        //   handler,
        // ),
        // Answer(
        //   answers[3],
        //   3,
        //   handler,
        // ),
      ],
    );
  }
}
