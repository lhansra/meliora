import 'package:flutter/material.dart';

import 'login.dart';
import 'signup.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loginButton = Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(6.0),
        color: Color(0xff339CBD),
        child: MaterialButton(
            onPressed: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new LoginPage()),
              );
            },
            minWidth: 350,
            child: Text("Login",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Lato',
                    fontSize: 18,
                    letterSpacing: 0,
                    fontWeight: FontWeight.normal,
                    height: 1))));

    final signupButton = Material(
        elevation: 5.0,
        borderRadius: BorderRadius.circular(6.0),
        color: Color(0xff339CBD),
        child: MaterialButton(
            onPressed: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new SignUpPage()),
              );
            },
            minWidth: 350,
            child: Text("SignUp",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Lato',
                    fontSize: 18,
                    letterSpacing: 0,
                    fontWeight: FontWeight.normal,
                    height: 1))));

    return Scaffold(
        body: Center(
            child: Container(
                color: Color.fromRGBO(43, 134, 157, .64),
                child: Padding(
                    padding: const EdgeInsets.all(36.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 155.0,
                            child: Text(
                              "Meliora",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Tangerine',
                                  fontSize: 60,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            ),
                          ),
                          loginButton,
                          SizedBox(height: 25.0),
                          signupButton,
                          SizedBox(height: 15.0),
                        ])))));
  }
}
