import 'package:flutter/material.dart';
import '../Button/GoogleButton.dart';
import '../Service/AuthGoogle.dart';
import '../HomePage/Home.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  AuthGoogle authenticateGoogle = AuthGoogle();
  bool _isLogIn = false;
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () async {
              if (_isLogIn == false) {
                authenticateGoogle.googleSignIn();
                setState(() {
                  _isLogIn = true;
                });
              }
              if (_isLogIn == true &&
                  authenticateGoogle.googleSignIn() != null) {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              }
            },
            child: GoogleButton(),
          ),
        ],
      ),
    );
  }
}
