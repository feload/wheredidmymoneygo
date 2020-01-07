import 'package:flutter/material.dart';
import 'package:wheredidmymoneygo/services/firebase_service.dart';

class LoginScreen extends StatefulWidget {
  static final String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  FirebaseService firebase = new FirebaseService();

  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email:'
                ),
                onChanged: (value) {
                  email = value;
                },
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password:'
                ),
                onChanged: (value) {
                  password = value;
                },
              ),
              RaisedButton(
                child: Text('Login'),
                onPressed: () {
                  firebase.login(email, password);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}