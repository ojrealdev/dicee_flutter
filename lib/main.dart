import 'package:flutter/material.dart';

void main() => runApp(DicePage());

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  int leftDiceNumber = 4;

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Dicee by Ochieng',
              style: TextStyle(
                  color: Colors.white, fontFamily: 'Supermercado One'),
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
                      if (leftDiceNumber < 6 && leftDiceNumber > 0) {
                        leftDiceNumber += 1;
                      } else {
                        leftDiceNumber -= 1;
                      }
                      print('You pressed the left button!');
                    },
                    child: Image.asset('images/dice$leftDiceNumber.png'),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      print('You pressed the right button!');
                    },
                    child: Image.asset('images/dice2.png'),
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
