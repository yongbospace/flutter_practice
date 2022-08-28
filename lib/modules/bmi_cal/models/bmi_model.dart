import 'package:flutter/material.dart';

class BMIModel {
  final int height;
  final int weight;

  BMIModel({
    required this.height,
    required this.weight,
  });

  double bmiCalculator() {
    double result = weight / (height / 100 * height / 100);
    return result;
  }

  List bmiCategory() {
    if (bmiCalculator() <= 18.5) {
      return [
        Colors.yellow,
        'Underweight',
        'You have a lower than normal body weight.\nYou can eat a bit more.',
      ];
    } else if (bmiCalculator() <= 24.9) {
      return [
        Colors.green,
        'Normal',
        'You have a normal body weight.\nGood job!',
      ];
    } else if (bmiCalculator() <= 29.9) {
      return [
        Colors.red,
        'Overweight',
        'You have a higher than normal body weight.\nTry to exercise more.',
      ];
    } else {
      return [
        Colors.purple,
        'Obesity',
        'You ...',
      ];
    }
  }
}
