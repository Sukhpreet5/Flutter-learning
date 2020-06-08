import 'package:flutter/material.dart';
import 'dart:math';

void main() =>
    runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text(
          "Ask Me Anything",
        ),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
          child: Image.asset(
            'images/ball$ballNumber.png',
          ),
          onPressed: ()  {
            print("I got clicked");
            setState(
              _changeBall,
            );
          },
        ),
      ),
    );
  }

  void _changeBall() {
    ballNumber = Random().nextInt(5) + 1;
  }
}
