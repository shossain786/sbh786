import 'package:flutter/material.dart';
import 'package:sbh786/library.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Flutter Practice APP'),
      ),
      body: GradientContainer(),
    );
  }
}
//end