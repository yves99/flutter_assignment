import 'package:flutter/material.dart';

class SetupTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Text(
          "Setup", 
          style: new TextStyle(fontSize: 40.0), 
          textAlign: TextAlign.center
        ),
      )
    );
  }
}