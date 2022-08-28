import 'package:flutter/material.dart';
import 'package:flutter_practice/modules/bmi_cal/screens/input_page.dart';

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff0A0E21),
          title: Text(
            'BMI Calculator'.toUpperCase(),
          ),
        ),
        body: InputPage());
  }
}
