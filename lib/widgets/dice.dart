import 'dart:math';

import 'package:flutter/material.dart';

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  DiceState createState() => DiceState();
}

class DiceState extends State<Dice> {
  Random random = Random();
  int number = 1;

  void roll() {
    var delays = [25, 50, 100, 200, 400, 800];
    for (var delay in delays) {
      Future.delayed(Duration(milliseconds: delay), () {
        setState(() {
          number = random.nextInt(6) + 1;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.red,
        backgroundColor: Colors.red,
        elevation: 0,
        padding: const EdgeInsets.all(10)
      ),
      onPressed: roll,
      child: Image.asset("assets/images/dice$number.png"),
    );
  }
}
