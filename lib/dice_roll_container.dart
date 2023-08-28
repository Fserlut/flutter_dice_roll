import 'package:dice_roll_app/dice_roll.dart';
import 'package:flutter/material.dart';

class DiceRollContainer extends StatelessWidget {
  const DiceRollContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Dice Roll App',
              style: TextStyle(fontSize: 28, color: Colors.white),
            ),
            DiceRoll(),
          ],
        ),
      ),
    );
  }
}
