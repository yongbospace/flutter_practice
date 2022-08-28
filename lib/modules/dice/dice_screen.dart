import 'dart:math';
import 'package:flutter/material.dart';

class DiceScreen extends StatefulWidget {
  const DiceScreen({Key? key}) : super(key: key);

  @override
  State<DiceScreen> createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> {
  int numberOne = 1;
  int numberTwo = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[200],
      appBar: AppBar(
        title: (Text('Dice')),
        backgroundColor: Colors.red[300],
      ),
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Dice(
            number: numberOne,
            onPressed: renderNumber,
          ),
          Dice(
            number: numberTwo,
            onPressed: renderNumber,
          ),
        ],
      )),
    );
  }

  void renderNumber() {
    setState(() {
      numberOne = Random().nextInt(6) + 1;
      numberTwo = Random().nextInt(6) + 1;
    });
  }
}

class Dice extends StatelessWidget {
  final int number;
  final VoidCallback onPressed;

  const Dice({
    required this.number,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: onPressed,
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('images/dice$number.png')),
      ),
    );
  }
}
