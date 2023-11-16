import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var diceRoller = 6;

  void roller() {
    setState(() {
      diceRoller = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/dice-$diceRoller.png",
            width: 200,
          ),
          const SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: roller,
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 30,
                )),
            child: const Text("Roll Dice"),
          )
        ],
      ),
    );
  }
}
