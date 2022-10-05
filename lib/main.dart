import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const achtBall());
}

class achtBall extends StatefulWidget {
  const achtBall({super.key});

  @override
  State<achtBall> createState() => _achtBallState();
}

class _achtBallState extends State<achtBall> {
  int ballNumber = 1;

  void setBallStatus() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 251, 220, 187),
        appBar: AppBar(
          title: Center(child: const Text('Magic 8 Ball')),
          backgroundColor: Color.fromARGB(255, 134, 173, 233),
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setBallStatus();
                  },
                  child: Image.asset('images/ball$ballNumber.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
