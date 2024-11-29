import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      child: ElevatedButton(
        onPressed: selectHandler,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.yellow,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          answerText,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
