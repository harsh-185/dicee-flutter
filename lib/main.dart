import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red[700],
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.black,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  var randomNumber1 = 1;
  var randomNumber2 = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: FilledButton(
                style: ButtonStyle(
                    enableFeedback: true,
                    backgroundColor: MaterialStateProperty.all(
                        Colors.transparent)
                    ),
                onPressed: () {
                  setState(() {
                    randomNumber1 = randomize();
                    randomNumber2 = randomize();
                  });
                  },
                child: Image.asset('images/dice$randomNumber1.png')
            ),
          ),
          Expanded(
            flex: 1,
            child: FilledButton(
                style: ButtonStyle(
                    enableFeedback: true,
                    backgroundColor: MaterialStateProperty.all(
                        Colors.transparent)
                ),
                onPressed: () {
                  setState(() {
                    randomNumber1 = randomize();
                    randomNumber2 = randomize();
                  });
                  },
                child: Image.asset('images/dice$randomNumber2.png')
            ),
          )
        ],
      ),
    );
  }
}


int randomize() {
  int randomNumber = Random().nextInt(6) + 1; // generates a random number between 1 and 6
  return randomNumber;
}
