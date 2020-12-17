import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final resultScore;
  final Function reset;

  Result(this.resultScore, this.reset);

  String get comment {
    String response;
    if (resultScore < 2) {
      response = 'Improve your G.K.!!!';
    } else if (resultScore < 4) {
      response = 'Try Harder!!!';
    } else if (resultScore < 5) {
      response = 'Good!!!';
    } else {
      response = 'Basic G.K. is good!!!';
    }
    return response;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
      Text(
        'Score: $resultScore',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        comment,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      FlatButton(
          padding: EdgeInsets.all(10),
          onPressed: reset,
          child: Text(
            'Reset Quiz',
            style: TextStyle(
              fontSize: 30,
              // color: Colors.white,
              // backgroundColor: Colors.blue,
            ),
          ))
    ]));
  }
}
