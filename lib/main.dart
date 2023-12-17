import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        title: Text(
          'Dice',
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.blue[100],
      ),
      body: Dicepage(),
    ),
  ));
}

class Dicepage extends StatefulWidget {
  const Dicepage({super.key});

  @override
  State<Dicepage> createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int left = 1;
  int right = 1;
  @override
  Widget build(BuildContext context) {
    void changedice() {
      left = Random().nextInt(6) + 1;
      right = Random().nextInt(6) + 1;
    }

    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$left.png'),
              onPressed: () {
                setState(() {
                  changedice();
                });
              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$right.png'),
              onPressed: () {
                setState(() {
                  changedice();
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
