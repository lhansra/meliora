import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    final emailField = TextField(
        obscureText: false,
        decoration: InputDecoration(
          hintText: "Email",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(6.0)),
        ));
    final passwordField = TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: "Password",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(6.0)),
        ));
    final confirmField = TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: "Confirm Password",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(6.0)),
        ));
    final signUpButton = Material(
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
            child: Text("Continue",
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
                color: Colors.white,
                child: Padding(
                    padding: const EdgeInsets.all(36.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 75.0,
                            child: Text(
                              "Sign Up",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromRGBO(50, 155, 189, 1),
                                  fontFamily: 'Lato',
                                  fontSize: 34,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            ),
                          ),
                          emailField,
                          SizedBox(height: 25.0),
                          passwordField,
                          SizedBox(height: 25.0),
                          confirmField,
                          SizedBox(height: 35.0),
                          signUpButton,
                          SizedBox(height: 15.0),
                        ])))));
  }
}
