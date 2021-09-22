//timeline
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  double birdY = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.blue,
              child: Center(
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment(0, birdY),
                      child: Container(
                        width: 50,
                        height: 50,
                        color:Colors.yellow,
                      ),
                    )
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
    );
  }
}
