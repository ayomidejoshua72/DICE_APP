import 'package:flutter/material.dart';
import 'package:dice_app/dice_roll.dart';

void main(List<String> args) {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Pages(),
      ),
    ),
  );
}

class Pages extends StatelessWidget {
  const Pages({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade600, Colors.blue.shade500],
          ),
        ),
        child: const DiceRoller());
  }
}
