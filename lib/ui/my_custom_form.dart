import 'package:flutter/material.dart';
import './register_page.dart';
import './home_page.dart';

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    // TODO: implement createState
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {

  TextEditingController ctrlId = TextEditingController();
  TextEditingController ctrlPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Form(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top:100.0), //40atfirst
              child: Image.asset(
              "resources/logo.png",
              height: 150,
              width: 150,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35.0, right: 35.0, top: 20.0),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    controller: ctrlId,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                      prefixIcon: Icon(Icons.person),
                      labelText: "User Id",
                      labelStyle: TextStyle(fontSize: 20.0),
                      hintText: "input your Id",
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 25.0),
                  TextFormField(
                    controller: ctrlPassword,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                      prefixIcon: Icon(Icons.lock),
                      labelText: "Password",
                      labelStyle: TextStyle(fontSize: 20.0),
                      hintText: "input your password",
                    ),
                    keyboardType: TextInputType.text,
                    obscureText: true,
                  ),
                  SizedBox(height: 30.0),
                  new SizedBox(
                    width: double.infinity,
                    child: new RaisedButton(
                      child: Text("LOGIN", style: TextStyle(fontSize: 15.0),),
                      onPressed: () {
                        String username = ctrlId.text;
                        String password = ctrlPassword.text;

                        if(username == '' || password == ''){
                          showDialog(
                            context: context,
                            builder: (context) {
                                return AlertDialog(
                                content: Text("กรุณาระบุ user or password"));
                                }
                          );
                        }
                        
                        else if(username != 'admin' || password != 'admin'){
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                              content: Text("user or password ไม่ถูกต้อง"));
                            }
                          );
                        }

                        else {
                          Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage(), ),);
                        }
                      }
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: FlatButton(onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => RegisterScreen(), ),);
                    },
                      child: Text('Register New Account', style: TextStyle(color: Colors.teal))
                      )
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