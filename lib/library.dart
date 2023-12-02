import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

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
        child: StyledText('Welcome to Flutter!'),
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
