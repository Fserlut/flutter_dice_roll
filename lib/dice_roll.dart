import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});

  @override
  State<DiceRoll> createState() {
    return _DiceRollState();
  }
}

class _DiceRollState extends State<DiceRoll> {
  var currentDiceRollImageIndex = 2;

  rollDiceHandler() {
    setState(() {
      currentDiceRollImageIndex = randomizer.nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 100,
        ),
        Image.asset(
          'assets/images/dice-$currentDiceRollImageIndex.png',
          width: 200,
        ),
        const SizedBox(
          height: 40,
        ),
        FilledButton(
          onPressed: rollDiceHandler,
          child: const Text(
            'roll',
            style: const TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
