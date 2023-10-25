import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class result extends StatelessWidget {
  const result({super.key, required this.ans});
  final int ans;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              height: 500,
              width: 400,
              child: Lottie.asset("assets/animation_lnuo4jd4.json"),
            ),
            CircularPercentIndicator(
              radius: 120.0,
              lineWidth: 18,
              animation: true,
              percent: ans / 10,
              center: new Text(
                ("${ans / 10}"),
                style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              footer: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: new Text(
                  "YOUR SCORE IS:$ans out of 10",
                  style: new TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 17.0),
                ),
              ),
              circularStrokeCap: CircularStrokeCap.round,
              progressColor: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
