import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Text(
          "Profile", 
          style: new TextStyle(fontSize: 40.0), 
          textAlign: TextAlign.center
        ),
      )
    );
  }
}