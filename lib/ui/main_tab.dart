import 'package:flutter/material.dart';

class MainTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Text(
          "Main", 
          style: new TextStyle(fontSize: 40.0), 
          textAlign: TextAlign.center
        ),
      )
    );
  }
}