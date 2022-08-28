import 'package:flutter_practice/modules/quizzler/models/quizzler_models.dart';

int _quizNumber = 0;

class QuizzlerQuizzes {
  final List<Quiz> _quizzes = [
    Quiz(question: 'Some cats are actually allergic to humans', answer: true),
    Quiz(
        question: 'You can lead a cow down stairs but not up stairs.',
        answer: false),
    Quiz(
        question: 'Approximately one quarter of human bones are in the feet.',
        answer: true),
    Quiz(question: 'A slug\'s blood is green.', answer: true),
    Quiz(
        question: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".',
        answer: true),
    Quiz(
        question: 'It is illegal to pee in the Ocean in Portugal.',
        answer: true),
    Quiz(
        question:
            'No piece of square dry paper can be folded in half more than 7 times.',
        answer: false),
    Quiz(
        question:
            'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        answer: true),
    Quiz(
        question:
            'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        answer: false),
    Quiz(
        question:
            'The total surface area of two human lungs is approximately 70 square metres.',
        answer: true),
    Quiz(question: 'Google was originally called \"Backrub\".', answer: true),
    Quiz(
        question:
            'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        answer: true),
    Quiz(
        question:
            'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        answer: true),
  ];

  nextQuiz() {
    _quizNumber < _quizzes.length - 1 ? _quizNumber++ : _quizNumber = 0;
  }

  int getQuizLength() {
    return _quizzes.length;
  }

  getQuestion() {
    return _quizzes[_quizNumber].question;
  }

  getAnswer() {
    return _quizzes[_quizNumber].answer;
  }
}
