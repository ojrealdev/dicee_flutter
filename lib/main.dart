import 'package:flutter/material.dart';

void main() => runApp(DicePage());

class DicePage extends StatelessWidget {
  @override
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
                      print('You pressed the left button!');
                    },
                    child: Image.asset('images/dice1.png'),
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
