import 'package:flutter/material.dart';

import 'widgets/dice.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
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