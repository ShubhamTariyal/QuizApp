import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Map<String, Object> answer;
  final int index;
  final List<String> arr = ['A', 'B', 'C', 'D'];
  final Function handler;

  Answer(this.answer, this.index, this.handler);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      width: double.infinity,

      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        // elevation: 0,
        child:
            Text('${arr[index]})  ${answer['option']}', style: TextStyle(fontSize: 15)),
        onPressed: () => handler(answer['score']),
      ),
    );
  }
}
