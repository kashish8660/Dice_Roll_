import 'package:flutter/material.dart';
import 'dart:math';

final randomizor = Random();
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }


}
class _DiceRollerState extends State<DiceRoller> {
  var activeDiceVariable = 'assets/images/dice-1.png';

  rollDice() {
    setState(() {
      activeDiceVariable = 'assets/images/dice-${randomizor.nextInt(6)+1}.png';
    });
  }
  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(activeDiceVariable, width: 200),
      const SizedBox(
          height: 100
      ),
      TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28)),
          child: const Text("Roll Dice"))
    ]);
  }
}