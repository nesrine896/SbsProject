// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      color: KPrimaryColor,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: -150,
            left: -15,
            child: Image.asset("assets/images/decor.png", width: size.width),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset("assets/images/team-img.png", width: size.width),
          ),
          child,
        ],
      ),
    );
  }
}
