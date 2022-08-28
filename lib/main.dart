import 'package:flutter/material.dart';
import 'package:flutter_practice/screens/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0A0E21),
        scaffoldBackgroundColor: Color(0xff0A0E21),
      ),
      home: HomeScreen(),
    ),
  );
}
