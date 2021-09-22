//timeline
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:newth/char.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  double charY = 0;

  void jump() {
     Timer.periodic(Duration(milliseconds: 50), (timer) {
        setState(() {
          charY -= 0.05;
        });
     });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: jump,
      child: Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.blue,
              child: Center(
                child: Stack(
                  children: [
                    MyChar(
                      charY: charY,
                    ),  
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.brown[400],
            ),
          ),
        ],
      ),
    ),
    );
  }
}
