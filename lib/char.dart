import 'package:flutter/material.dart';

class MyChar extends StatelessWidget {

  final charY;

  MyChar({this.charY});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(0,charY),
      height: 50,
      width: 50,
      child: Image.asset('lib/images/SupaNasosWithHat.png'),
      
    );
  }
}