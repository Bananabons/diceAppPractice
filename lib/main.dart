import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.yellow[800],
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Icon(Icons.casino_outlined),
            ),
            Text(
              'Let\'s Roll the Dice!',
              style: TextStyle(color: Colors.brown),
            ),
          ],
        ),
        backgroundColor: Colors.yellow[600],
      ),
      body: DiceApp(),
    ),
  ));
}


class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {

  int leftDieNum = 1;
  int rightDieNum = 1;

  void randomDieGenerator() {
    var random = Random();
  setState(() {
    leftDieNum = random.nextInt(6) + 1;
    rightDieNum = random.nextInt(6) + 1;
  });
  }



  @override

  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: (){
                print('button left is pressed');
                randomDieGenerator();
              },
              child: Image.asset('images/dice$leftDieNum.png'),
               ),
          ),
          Expanded(
            child: TextButton(
              onPressed: (){
                print('button right is pressed');
                randomDieGenerator();
                },
              child: Image.asset('images/dice$rightDieNum.png'),
            ),
          ),
        ],
      ),
    )

  ;}
}
