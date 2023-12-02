import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  //var activeDiceImage = 'assets/images/dice-5.png';
  int diceNum = Random().nextInt(6) + 1;
  void rollDice() {
// ignore: avoid_print
    print('Changing the dice!');
    diceNum = Random().nextInt(6) + 1;
    setState(() {
      // this need to use for changing the field in application run time.
      // This function re execute the build function
      //activeDiceImage = 'assets/images/dice-$diceNum.png';
      diceNum = Random().nextInt(6) + 1;
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
