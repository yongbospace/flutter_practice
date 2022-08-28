import 'package:flutter/material.dart';
import 'package:flutter_practice/modules/quizzler/components/quizzler_quizzes.dart';
import 'package:flutter_practice/modules/quizzler/screens/quizzler_quiz_screen.dart';
import 'package:flutter_practice/modules/quizzler/screens/quizzler_result_screen.dart';

QuizzlerQuizzes quiz = QuizzlerQuizzes();

TextStyle textStyle = const TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

class QuizzlerScreen extends StatefulWidget {
  const QuizzlerScreen({Key? key}) : super(key: key);

  @override
  State<QuizzlerScreen> createState() => _QuizzlerScreenState();
}

class _QuizzlerScreenState extends State<QuizzlerScreen> {
  List<Icon> scoreKeeper = [];
  int totalValid = 0;
  bool isFinished = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'Quizzler',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: isFinished
                ? QuizzlerResultScreen(
                    totalValid: totalValid,
                    textStyle: textStyle,
                    onPressed: onAgainPressed)
                : QuizzlerQuizScreen(
                    textStyle: textStyle,
                    onPressAnswer: onPressAnswer,
                    scoreKeeper: scoreKeeper,
                    totalValid: totalValid,
                  )),
      ),
    );
  }

  void onAgainPressed() {
    setState(() {
      isFinished = false;
      scoreKeeper = [];
      totalValid = 0;
    });
  }

  void onPressAnswer(bool valid) {
    if (valid == quiz.getAnswer()) {
      scoreKeeper.add(const Icon(
        Icons.check,
        color: Colors.green,
      ));
      totalValid++;
    } else {
      scoreKeeper.add(const Icon(
        Icons.close,
        color: Colors.red,
      ));
    }
    setState(() {
      quiz.nextQuiz();
      if (scoreKeeper.length > 12) {
        isFinished = true;
        // ScaffoldMessenger.of(context).showSnackBar(quizzlerSnackBar);

      }
    });
  }
}
