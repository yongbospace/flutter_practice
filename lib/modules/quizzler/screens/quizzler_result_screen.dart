import 'package:flutter/material.dart';
import 'package:flutter_practice/modules/quizzler/components/quizzler_quizzes.dart';

class QuizzlerResultScreen extends StatelessWidget {
  final int totalValid;
  final TextStyle textStyle;
  final VoidCallback onPressed;

  const QuizzlerResultScreen({
    required this.totalValid,
    required this.textStyle,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final QuizzlerQuizzes quiz = QuizzlerQuizzes();
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: totalValid > 6 ? Colors.green : Colors.red,
            ),
            child: Column(
              children: [
                Text(
                  totalValid > 6 ? 'You are a Genius' : 'You are a Idiot',
                  style: textStyle,
                ),
                SizedBox(height: 10),
                Text(
                  'Score : $totalValid/${quiz.getQuizLength()}',
                  style: textStyle,
                ),
                SizedBox(height: 50),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(160, 80),
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: onPressed,
                  child: Text('Play Again', style: textStyle),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
