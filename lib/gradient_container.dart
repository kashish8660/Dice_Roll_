import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';
import 'styled_text.dart';

class GradientContainer extends StatelessWidget {
  GradientContainer(
    this.color1,
    this.color2, {
    super.key,
  });

  // final List<Color> color;
  GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;
  final Color color1;
  final Color color2;


  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [color1, color2],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        // child: const StyledText("bhai ho gaya")
        child: const Center(
            child: DiceRoller()));
  }
}
