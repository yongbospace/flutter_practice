import 'package:flutter/material.dart';
import 'package:flutter_practice/modules/quizzler/components/quizzler_quizzes.dart';

class QuizzlerQuizScreen extends StatelessWidget {
  final TextStyle textStyle;
  final Function(bool) onPressAnswer;
  final List<Icon> scoreKeeper;
  final int totalValid;

  const QuizzlerQuizScreen({
    required this.textStyle,
    required this.onPressAnswer,
    required this.scoreKeeper,
    required this.totalValid,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuizzlerQuizzes quiz = QuizzlerQuizzes();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Center(
            child: Text(
              quiz.getQuestion(),
              textAlign: TextAlign.center,
              style: textStyle,
            ),
          ),
        ),
        Text(
          '$totalValid / ${quiz.getQuizLength()}',
          style: textStyle,
          textAlign: TextAlign.center,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
              ),
              onPressed: () {
                onPressAnswer(true);
              },
              child: Text(
                'True',
                style: textStyle,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
              ),
              onPressed: () {
                onPressAnswer(false);
              },
              child: Text(
                'False',
                style: textStyle,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 24,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: scoreKeeper,
          ),
        )
      ],
    );
  }
}
