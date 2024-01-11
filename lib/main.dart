import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Center(
            child: Text("Dicee", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
          ),
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Image.asset("assets/images/dice1.png"),
        ),
        Expanded(
          child: Image.asset("assets/images/dice2.png"),
        ),
        Expanded(
          child: Image.asset("assets/images/dice3.png"),
        ),
        Expanded(
          child: Image.asset("assets/images/dice4.png"),
        ),
        Expanded(
          child: Image.asset("assets/images/dice5.png"),
        ),
        Expanded(
          child: Image.asset("assets/images/dice6.png"),
        ),
      ],
    );
  }
}
