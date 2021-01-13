import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Roll The Dice'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int firstDiceNumber = 1;
  int secondDiceNumber = 3;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                numberGenerator();
              },
              child: Image.asset('images/dice$firstDiceNumber.png'),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                numberGenerator();
              },
              child: Image.asset('images/dice$secondDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }

  void numberGenerator() {
    setState(() {
      firstDiceNumber = Random().nextInt(6) + 1;
      secondDiceNumber = Random().nextInt(6) + 1;
    });
  }
}
