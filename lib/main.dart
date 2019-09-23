import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      theme: ThemeData.dark().copyWith(),
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(
              child: Text(
            'Dicee',
          )),
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
  int leftDiceno = 1;
  int rightDiceno = 1;

  void changeDice() {
    setState(() {
      rightDiceno = Random().nextInt(5) + 1;
      leftDiceno = Random().nextInt(5) + 1;
    });
  }

  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              hoverColor: Colors.green,
              onPressed: () {
                changeDice();
              },
              child: Image.asset('images/dice$leftDiceno.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDice();
              },
              child: Image.asset('images/dice$rightDiceno.png'),
            ),
          ),
        ],
      ),
    );
  }
}
