import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(DicePage());

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  int leftDiceNumber = 4;
  int rightDiceNumber = 1;

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Dicee by Ochieng',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Supermercado One',
                  fontSize: 30),
            ),
          ),
          backgroundColor: Colors.red,
        ),
        body: Container(
          child: Center(
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        leftDiceNumber = Random().nextInt(6 - 1) + 1;
                        rightDiceNumber = Random().nextInt(5) + 1;
                      });
                      print('You pressed Left Dice Number $leftDiceNumber');
                    },
                    child: Image.asset('images/dice$leftDiceNumber.png'),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        rightDiceNumber = Random().nextInt(5) + 1;
                        leftDiceNumber = Random().nextInt(6 - 1) + 1;
                      });
                      print('You pressed Right Dice Number $rightDiceNumber');
                    },
                    child: Image.asset('images/dice$rightDiceNumber.png'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
