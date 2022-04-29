// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:frontend/Screens/LoginNewdesign.dart';
import 'package:frontend/constants/constants.dart';
import '../widgets/round_Boutton.dart';
import '../widgets/slideitem.dart';
import '../widgets/slidedots.dart';
import 'package:frontend/widgets/slidedots.dart';

import '../models/slide.dart';

class GettingStartedScreen extends StatefulWidget {
  @override
  _GettingStartedScreenState createState() => _GettingStartedScreenState();
}

class _GettingStartedScreenState extends State<GettingStartedScreen> {
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 10), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            // padding: const EdgeInsets.all(20),
            child: Column(
      children: <Widget>[
        Expanded(
          child: Container(
            height: 600,
            decoration: BackgroundDemo(),
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: <Widget>[
                PageView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: _pageController,
                  onPageChanged: _onPageChanged,
                  itemCount: slideList.length,
                  itemBuilder: (ctx, i) => SlideItem(i),
                ),
                Stack(
                  alignment: AlignmentDirectional.topStart,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(bottom: 35),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          for (int i = 0; i < slideList.length; i++)
                            if (i == _currentPage)
                              SlideDots(true)
                            else
                              SlideDots(false)
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            RoundedButton(
                text: "Login",
                color: KPrimaryColor,
                textColor: Colors.white,
                press: () {
                  Navigator.of(context).pushNamed(LoginPage.routName);
                }),
            // FlatButton(
            //   child: Text(
            //     'Have an account?',
            //     style: TextStyle(fontSize: 18),
            //   ),
            //   onPressed: () {
            //     // Navigator.of(context).pushNamed(SignIn.routName);
            //   },
            // ),
          ],
        )
      ],
    )));
  }

  BoxDecoration BackgroundDemo() {
    return BoxDecoration(
        color: KPrimaryColor,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(150),
        ));
  }
}
