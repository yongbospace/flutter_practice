import 'package:flutter/material.dart';
import 'package:flutter_practice/modules/bmi_cal/components/bottom_component.dart';
import 'package:flutter_practice/modules/bmi_cal/components/box_component.dart';
import 'package:flutter_practice/modules/bmi_cal/components/button_component.dart';
import 'package:flutter_practice/modules/bmi_cal/components/icon_content.dart';
import 'package:flutter_practice/modules/bmi_cal/components/slider_component.dart';
import 'package:flutter_practice/modules/bmi_cal/constants/constants.dart';
import 'package:flutter_practice/modules/bmi_cal/screens/result_screen.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? activeGender;
  int height = 160;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: BoxComponent(
                  color: activeGender == Gender.male
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  boxChild: IconContent(
                    icon: Icons.male,
                    name: 'MALE',
                    iconColor: activeGender == Gender.male
                        ? Colors.white
                        : kLabelTextColor,
                  ),
                  onTap: () {
                    setState(() {
                      activeGender = Gender.male;
                    });
                  },
                ),
              ),
              Expanded(
                child: BoxComponent(
                  color: activeGender == Gender.female
                      ? kActiveCardColor
                      : kInactiveCardColor,
                  boxChild: IconContent(
                    icon: Icons.female,
                    name: 'FEMALE',
                    iconColor: activeGender == Gender.female
                        ? Colors.white
                        : kLabelTextColor,
                  ),
                  onTap: () {
                    setState(() {
                      activeGender = Gender.female;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: BoxComponent(
            color: kActiveCardColor,
            boxChild: SliderComponent(
              currentHeight: height,
              onSliderChange: onSliderChange,
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: BoxComponent(
                  color: kActiveCardColor,
                  boxChild: ButtonComponent(
                    onMinusPress: onWeightMinus,
                    onPlusPress: onWeightPlus,
                    selectedValue: weight,
                    buttonTitle: 'WEIGHT',
                  ),
                ),
              ),
              Expanded(
                child: BoxComponent(
                  color: kActiveCardColor,
                  boxChild: ButtonComponent(
                    onMinusPress: onAgeMinus,
                    onPlusPress: onAgePlus,
                    selectedValue: age,
                    buttonTitle: 'AGE',
                  ),
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ResultScreen(
                  height: height,
                  weight: weight,
                ),
              ),
            );
          },
          child: BottomComponent(
            title: 'CALCULATE YOUR BMI',
          ),
        ),
      ],
    );
  }

  void onSliderChange(double value) {
    setState(() {
      height = value.round();
    });
  }

  void onWeightMinus() {
    setState(() {
      weight > 1 ? weight-- : weight = 1;
    });
  }

  void onWeightPlus() {
    setState(() {
      weight < 100 ? weight++ : weight = 100;
    });
  }

  void onAgeMinus() {
    setState(() {
      age > 1 ? age-- : age = 1;
    });
  }

  void onAgePlus() {
    setState(() {
      age < 120 ? age++ : age = 120;
    });
  }
}
