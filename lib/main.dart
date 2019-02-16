import 'package:flutter/material.dart';
import './ui/my_custom_form.dart';
import './ui/home_page.dart';


void main() => runApp(LoginApp());

class LoginApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Assignment',
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      // home: MyHomePage(),
      initialRoute: "/",
      routes: {
        "/": (context) => MyCustomForm(),
        "/second": (context) => HomePage(),
        // "/detail": (context) => DetailScreen(),
      },
    );
  }
}
