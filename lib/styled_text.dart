import 'package:flutter/material.dart';


class StyledText extends StatelessWidget {

  const StyledText(this.text, {super.key});
  final String text;
  @override
  Widget build(context) {
   const a = 28.0;
    return Center(
      child: Text(
        text,
        style: const TextStyle(
          color: Color.fromARGB(255, 254, 254, 254),
          fontSize: a,
        ),
      ),
    );
  }
}
