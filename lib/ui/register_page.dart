import 'package:flutter/material.dart';
import './my_custom_form.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  TextEditingController ctrlId = TextEditingController();
  TextEditingController ctrlPassword = TextEditingController();
  TextEditingController ctrlComfirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("REGISTER", style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold)),
      ),
      body: Form(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 35.0, right: 35.0, top: 30.0),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    controller: ctrlId,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                      prefixIcon: Icon(Icons.mail),
                      labelText: "Email",
                      labelStyle: TextStyle(fontSize: 15.0),
                      hintText: "input your email",
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  TextFormField(
                    controller: ctrlPassword,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                      prefixIcon: Icon(Icons.lock),
                      labelText: "Password",
                      labelStyle: TextStyle(fontSize: 15.0),
                      hintText: "input your password",
                    ),
                    keyboardType: TextInputType.text,
                    obscureText: true,
                  ),
                  TextFormField(
                    controller: ctrlComfirmPassword,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
                      prefixIcon: Icon(Icons.lock),
                      labelText: "Confirm Password",
                      labelStyle: TextStyle(fontSize: 15.0),
                      hintText: "confirm your password",
                    ),
                    keyboardType: TextInputType.text,
                    obscureText: true,
                  ),
                  SizedBox(height: 40.0),
                  new SizedBox(
                    height: 50.0,
                    width: double.infinity,
                    child: new RaisedButton(
                      child: Text("CONTINUE", style: TextStyle(fontSize: 12.0),),
                      onPressed: () {
                        String username = ctrlId.text;
                        String password = ctrlPassword.text;
                        String confirmPassword = ctrlComfirmPassword.text;

                        if(username == '' || password == '' || confirmPassword == ''){
                          showDialog(
                            context: context,
                            builder: (context) {
                                return AlertDialog(
                                content: Text("กรุณาระบุข้อมูลให้ครบถ้วน"));
                                }
                          );
                        }
                        
                        else if(username == 'admin'){
                          if(password == confirmPassword){
                            showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                              content: Text("user นี้มีอยู่ในระบบแล้ว"));
                              }
                            );
                          }

                          else if(password != confirmPassword){
                            showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                              content: Text("Password mismatch"));
                              }
                            );
                          }
                        }

                        else {
                          if(password != confirmPassword){
                            showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                              content: Text("กรุณาระบุข้อมูลให้ครบถ้วน"));
                              }
                            );
                          }
                          else {
                            Navigator.push(context,MaterialPageRoute(builder: (context) => MyCustomForm(), ),);
                          }
                        }

                      },
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}