import 'package:flutter/material.dart';
import 'package:quizz_app/splashscreen/splash_screen.dart';

void main() {
  runApp(quizapp());
}

class quizapp extends StatefulWidget {
  const quizapp({super.key});

  @override
  State<quizapp> createState() => _quizappState();
}

class _quizappState extends State<quizapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: splashscreen(),
    );
  }
}
