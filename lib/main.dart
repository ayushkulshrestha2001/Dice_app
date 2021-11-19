import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
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
  int leftDice = 1;
  int rightDice = 1;
  @override
  Widget build(BuildContext context) {
    void change() {
      setState(() {
        leftDice = (Random().nextInt(6)) + 1;
        rightDice = (Random().nextInt(6)) + 1;
      });
    }

    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1, //for telling how much should this one expand
            child: TextButton(
              onPressed: () {
                setState(() {
                  change();
                });
              },
              child: Image(
                image: AssetImage('images/dice$leftDice.png'),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: () {
                change();
              },
              child: Image(
                image: AssetImage('images/dice$rightDice.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
