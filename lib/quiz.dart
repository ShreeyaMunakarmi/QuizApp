import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    required this.questions,
    required this.questionIndex,
    required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          LinearProgressIndicator(
            value: (questionIndex + 1) / questions.length,
            backgroundColor: Colors.grey[300],
            color: Colors.purple,
          ),
          SizedBox(height: 20),
          Question(
            questions[questionIndex]['questionText'] as String,
          ),
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
              .map((answer) {
            return Answer(
                  () => answerQuestion(answer['isCorrect'] as bool),
              answer['text'] as String,
            );
          }).toList(),
        ],
      ),
    );
  }
}
