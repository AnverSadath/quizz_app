import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quizz_app/home_screen/home_screen.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2)).then((value) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => homescreen(),
        )));
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            child: Lottie.asset('assets/animation_lnuhbeba.json'),
          ),
        ),
      ),
    );
  }
}
