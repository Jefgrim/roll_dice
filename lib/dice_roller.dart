import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-1.png';

  void rollDice() {
    setState(() {
      var randomDiceNumber = randomizer.nextInt(6) + 1;
      activeDiceImage = 'assets/images/dice-$randomDiceNumber.png';
    });
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image(
        image: AssetImage(activeDiceImage),
        width: 200,
        height: 200,
      ),
      SizedBox(height: 20),
      TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 28),
          ),
          child: Text('Roll Dice')),
    ]);
  }
}
