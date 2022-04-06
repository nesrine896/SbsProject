// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class SlideItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: size.height,
        width: double.infinity,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset("assets/images/decor.png", width: size.width),
            ),
            Text(
              "All Control under \n one hand or two !",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontFamily: 'JosefinSans',
                  fontWeight: FontWeight.bold),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child:
                  Image.asset("assets/images/team-img.png", width: size.width),
            ),
          ],
        ),
      ),
    );
  }
}
