import 'package:flutter/material.dart';

import 'dice.dart';

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
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  // Create a list of 2 global keys
  final keys = List.generate(2, (_) => GlobalKey<DiceState>());

  void rollAll() {
    for (GlobalKey<DiceState> key in keys) {
      // Access the state of the dice and call the roll method
      key.currentState?.roll();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            // Generate a list of dice widgets, using the global keys
            children: keys.map((key) => Expanded(child: Dice(key: key))).toList(),
          ),
          const SizedBox(height: 25),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.red,
              backgroundColor: Colors.white,
              elevation: 0,
              padding: const EdgeInsets.all(20)
            ),
            onPressed: rollAll,
            child: const Text("Roll all the dices"),
          ),
        ],
      ),
    );
  }
}