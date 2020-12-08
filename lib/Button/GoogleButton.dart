import 'package:flutter/material.dart';
import 'package:Login_fgt/Service/AuthGoogle.dart';

class GoogleButton extends StatefulWidget {
  @override
  _GoogleButtonState createState() => _GoogleButtonState();
}

class _GoogleButtonState extends State<GoogleButton> {
  AuthGoogle authenticateGoogle = AuthGoogle();
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.only(
            top: _height * 0.6, left: _width * 0.2, right: _width * 0.2),
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black, width: 1),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              maxRadius: 15,
              backgroundImage: AssetImage('assets/Google.png'),
              backgroundColor: Colors.white,
            ),
            Text(
              'Log in With Google',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
