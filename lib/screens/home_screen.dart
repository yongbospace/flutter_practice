import 'package:flutter/material.dart';
import 'package:flutter_practice/modules/bmi_cal/bmi_cal_screen.dart';
import 'package:flutter_practice/modules/destini/destini_screen.dart';
import 'package:flutter_practice/modules/dice/dice_screen.dart';
import 'package:flutter_practice/modules/quizzler/screens/quizzler_screen.dart';
import 'package:flutter_practice/modules/which_pet/which_pet_screen.dart';
import 'package:flutter_practice/modules/id_card/id_card_screen.dart';
import 'package:flutter_practice/modules/ironman/iron_man_screen.dart';
import 'package:flutter_practice/modules/xylophone/xylophone_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Button(
              screen: IronManScreen(),
              title: 'I am Iron Man',
            ),
            Button(
              screen: IdCardScreen(),
              title: 'ID Card',
            ),
            Button(
              screen: DiceScreen(),
              title: 'Dice App',
            ),
            Button(
              screen: WhichPetScreen(),
              title: 'Which Pet',
            ),
            Button(
              screen: XylophoneScreen(),
              title: 'Xylophone',
            ),
            Button(
              screen: QuizzlerScreen(),
              title: 'Quizzler',
            ),
            Button(
              screen: DestiniScreen(),
              title: 'Destini',
            ),
            Button(
              screen: BMICalculator(),
              title: 'BMI Calculator',
            ),
          ],
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  final Widget screen;
  final String title;

  const Button({
    required this.screen,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.orange[400],
      ),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => screen));

        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (_) => screen,
        //   ),
        // );
      },
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          fontFamily: 'SourceSansPro',
        ),
      ),
    );
  }
}
