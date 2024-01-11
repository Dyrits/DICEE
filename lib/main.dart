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
    List<int> dices = [1, 1];

    return Center(
      child: Row(
        children: List.generate(dices.length, (index) => Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Image.asset("assets/images/dice${dices[index]}.png"),
          ),
        )),
      ),
    );
  }
}
