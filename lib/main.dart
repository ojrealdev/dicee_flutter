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

  //update image number when image is clicked
  changeDiceFace() {
    leftDiceNumber = Random().nextInt(6 - 1) + 1;
    rightDiceNumber = Random().nextInt(5) + 1;
    print('Left Dice is: $leftDiceNumber');
    print('Right Dice is: $rightDiceNumber');
  }

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
                        changeDiceFace();
                      });
                    },
                    child: Image.asset('images/dice$leftDiceNumber.png'),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        changeDiceFace();
                      });
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
