import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// avoding object creation of Random class everytime its being called.
final random = Random();

class _DiceRollerState extends State<DiceRoller> {
  //var activeDiceImage = 'assets/images/dice-5.png';

  static int getRandomNum(int range) {
    return random.nextInt(range) + 1;
  }

  int diceNum = getRandomNum(6);

  void rollDice() {
// ignore: avoid_print
    print('Changing the dice!');
    setState(() {
      // this need to use for changing the field in application run time.
      // This function re execute the build function
      //activeDiceImage = 'assets/images/dice-$diceNum.png';
      diceNum = getRandomNum(6);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      // by default column take entire screen
      mainAxisSize: MainAxisSize.min, //it specifies to how much space taking
      children: [
        Image.asset(
          'assets/images/dice-$diceNum.png',
          width: 150,
        ),
        const SizedBox(
          // to add some space between dice and the button
          height: 20,
          width: 300,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(
            //   //to add some space between border and the text at top
            //   top: 20,
            // ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 25),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
