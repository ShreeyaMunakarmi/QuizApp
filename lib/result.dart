import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetQuiz;

  Result(this.totalScore, this.resetQuiz);

  String get resultMessage {
    if (totalScore > 35) {
      return 'Excellent!';
    } else if (totalScore >= 30) {
      return 'Good Job!';
    } else {
      return 'Better luck next time!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultMessage,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            'Total Score: $totalScore',
            style: TextStyle(fontSize: 20, color: Colors.grey[700]),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: resetQuiz,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text(
              'Restart Quiz',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
