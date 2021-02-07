import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator SignUpPage - FRAME
    return Container(
        width: 375,
        height: 667,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              top: 70,
              left: 49,
              child: Text(
                'Meliora',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(176, 176, 176, 1),
                    fontFamily: 'Lato',
                    fontSize: 16,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 105,
              left: 49,
              child: Text(
                'Sign Up',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(51, 136, 189, 1),
                    fontFamily: 'Lato',
                    fontSize: 34,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 187,
              left: 49,
              child: Text(
                'Email',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(176, 176, 176, 1),
                    fontFamily: 'Lato',
                    fontSize: 15,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 303,
              left: 49,
              child: Text(
                'Password',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(176, 176, 176, 1),
                    fontFamily: 'Lato',
                    fontSize: 15,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 419,
              left: 49,
              child: Text(
                'Confirm Password',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(176, 176, 176, 1),
                    fontFamily: 'Lato',
                    fontSize: 15,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 247,
              left: 49,
              child: Divider(
                  color: Color.fromRGBO(51, 136, 189, 1), thickness: 1.5)),
          Positioned(
              top: 363,
              left: 49,
              child: Divider(
                  color: Color.fromRGBO(51, 136, 189, 1), thickness: 1.5)),
          Positioned(
              top: 479,
              left: 49,
              child: Divider(
                  color: Color.fromRGBO(51, 136, 189, 1), thickness: 1.5)),
          Positioned(
              top: 569,
              left: 49,
              child: Text(
                'Continue',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Lato',
                    fontSize: 18,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
        ]));
  }
}
