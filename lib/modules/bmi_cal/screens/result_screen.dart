import 'package:flutter/material.dart';
import 'package:flutter_practice/modules/bmi_cal/components/bottom_component.dart';
import 'package:flutter_practice/modules/bmi_cal/components/box_component.dart';
import 'package:flutter_practice/modules/bmi_cal/constants/constants.dart';
import 'package:flutter_practice/modules/bmi_cal/models/bmi_model.dart';

class ResultScreen extends StatelessWidget {
  final int height;
  final int weight;

  const ResultScreen({
    required this.height,
    required this.weight,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BMIModel bmiResult = BMIModel(height: height, weight: weight);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0A0E21),
        title: Text('BMI RESULT'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: BoxComponent(
              color: kActiveCardColor,
              boxChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    bmiResult.bmiCategory()[1].toUpperCase(),
                    style: kLabelTextStyle.copyWith(
                      color: bmiResult.bmiCategory()[0],
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    bmiResult.bmiCalculator().toStringAsFixed(1),
                    style: kTitleTextStyle.copyWith(
                      fontSize: 100,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      bmiResult.bmiCategory()[2],
                      style: kLabelTextStyle.copyWith(
                        fontSize: 24,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: BottomComponent(
              title: 'RE-CALCULATOR',
            ),
          ),
        ],
      ),
    );
  }
}
