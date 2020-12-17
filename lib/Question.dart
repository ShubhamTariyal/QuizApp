import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  final int index;

  Question(this.questionText, this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
      width: double.infinity,
      child: Text(
        'Q${index + 1}. $questionText',
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
