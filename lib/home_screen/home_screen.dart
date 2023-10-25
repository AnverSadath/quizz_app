import 'package:flutter/material.dart';
import 'package:quizz_app/result_page/result_page.dart';

import '../database/database.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  qusandans data = qusandans();
  int qno = 0;
  int value = -1;
  int ans = 0;
  int? score;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 30),
              Container(
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Text(
                      'Question.${qno + 1}',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        data.quizDatabase[qno]['question'],
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadiusDirectional.circular(20)),
                height: 250,
                width: 320,
              ),
              SizedBox(height: 50),
              Container(
                height: 350,
                width: 350,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 4,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          value = index;
                          value == data.quizDatabase[qno]['correctAnswer']
                              ? ans++
                              : print(value);
                        });
                      },
                      child: Container(
                        child: Center(
                            child: Text(
                          data.quizDatabase[qno]['option'][index],
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )),
                        decoration: BoxDecoration(
                            color: value == index
                                ? value ==
                                        data.quizDatabase[qno]['correctAnswer']
                                    ? Colors.green
                                    : Colors.red
                                : Colors.blue,
                            borderRadius: BorderRadius.circular(20)),
                        height: 60,
                        width: 100,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Ink(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      qno++;
                      value = 4;
                      if (qno == 9) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => result(
                                ans: ans,
                              ),
                            ));
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadiusDirectional.circular(20)),
                    height: 50,
                    width: 150,
                    child: Center(
                      child: Text(
                        "NEXT",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
