import 'package:flutter/material.dart';
import 'package:sbh786/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.lime, Colors.pink],
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          const TextStyle(fontSize: 30, color: Color.fromARGB(255, 97, 1, 1)),
    );
  }
}
