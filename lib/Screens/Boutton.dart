import 'package:flutter/material.dart';
import 'package:frontend/screens/Sign_Screen.dart';

import '../constants/constants.dart';

class Boutton extends StatelessWidget {
  Boutton(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FlatButton(
          child: Text(
            'Login',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.all(15),
          color: ButtonColor,
          textColor: Colors.white,
          onPressed: () {
            Navigator.of(context).pushNamed(SignupScreen.routeName);
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Have an account?',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
