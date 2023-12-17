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
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatelessWidget {
  const DicePage({super.key});

  @override
  Widget build(BuildContext context) {
    // int left = 1;
    // int right = 1;
    // void random() {
    //   left = Random().nextInt(6) + 1;
    //   right = Random().nextInt(6) + 1;
    // }

    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$left.png'),
              onPressed: () {
                // setState(
                //   random();
                print('right button pressed');
                )
              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$right.png'),
              onPressed: () {
                print('right button pressed');
              },
            ),
          ),
        ],
      ),
    );
  }
}
