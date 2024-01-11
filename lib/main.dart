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

class DicePage extends StatelessWidget {
  const DicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: List.generate(2, (index) => const Expanded(child: Dice())),
      ),
    );
  }
}
