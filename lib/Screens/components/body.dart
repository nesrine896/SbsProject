import 'package:flutter/material.dart';
import 'package:frontend/Screens/getting_start.dart';
import 'package:frontend/Screens/components/background.dart';
import 'package:frontend/components/Round_Boutton.dart';
import 'package:frontend/constants/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //this size provide us total height and widthof our screen
    return Background(
        child: SingleChildScrollView(
      child: Column(children: <Widget>[
        Text(
          "All Control under \n one hand or two !",
          style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontFamily: 'JosefinSans',
              fontWeight: FontWeight.bold),
        ),
        RoundedButton(
            text: "let's go",
            color: KPrimaryColor,
            textColor: Colors.white,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return GettingStartedScreen();
              }));
            }),
      ]),
    ));
  }
}
