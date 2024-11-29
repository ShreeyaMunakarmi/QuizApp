import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple)
            .copyWith(secondary: Colors.yellow),
        fontFamily: 'Roboto',
      ),
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget {
  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  final _questions = [
    {
      'questionText': 'What\'s the capital of France?',
      'answers': [
        {'text': 'Paris', 'isCorrect': true},
        {'text': 'London', 'isCorrect': false},
        {'text': 'Berlin', 'isCorrect': false},
      ],
    },
    {
      'questionText': 'What\'s the capital of Japan?',
      'answers': [
        {'text': 'Tokyo', 'isCorrect': true},
        {'text': 'Seoul', 'isCorrect': false},
        {'text': 'Beijing', 'isCorrect': false},
      ],
    },
    {
      'questionText': 'What\'s the capital of India?',
      'answers': [
        {'text': 'Delhi', 'isCorrect': true},
        {'text': 'Mumbai', 'isCorrect': false},
        {'text': 'Goa', 'isCorrect': false},
      ],
    },
    {
      'questionText': 'What\'s the capital of Nepal?',
      'answers': [
        {'text': 'Kathmandu', 'isCorrect': true},
        {'text': 'Patan', 'isCorrect': false},
        {'text': 'Bhaktapur', 'isCorrect': false},
      ],
    },
  ];

  int _currentQuestion = 0;
  int _totalScore = 0;
  List<Widget> _scoreIcons = [];

  void _answerQuestion(bool isCorrect) {
    setState(() {

      _scoreIcons.add(
        Icon(
          isCorrect ? Icons.check : Icons.close,
          color: isCorrect ? Colors.green : Colors.red,
        ),
      );


      if (isCorrect) {
        _totalScore += 10;
      }


      _currentQuestion++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _currentQuestion = 0;
      _totalScore = 0;
      _scoreIcons = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App with Score Tracker'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _scoreIcons,
          ),
          // Expanded(
          //   child: _currentQuestion < _questions.length
          //       ? Quiz(
          //     answerQuestion: (bool isCorrect) =>
          //         _answerQuestion(isCorrect),
          //     questionIndex: _currentQuestion,
          //     questions: _questions,
          //   )
          //       : Result(_totalScore, _resetQuiz),
          // ),
          Container(
            child: _currentQuestion < _questions.length
                ? Quiz(
              answerQuestion: (bool isCorrect) =>
                  _answerQuestion(isCorrect),
              questionIndex: _currentQuestion,
              questions: _questions,
            )
                : Result(_totalScore, _resetQuiz),
          ),
        ],
      ),
    );
  }
}
