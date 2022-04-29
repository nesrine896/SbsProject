// ignore_for_file: prefer_const_constructors
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:frontend/Screens/homepage.dart';
import '../services/api.dart';
import '../constants/constants.dart';
import '../widgets/TextfieldInput.dart';
import '../widgets/round_Boutton.dart';

class Login extends StatefulWidget {
  static const routName = "/login";

  @override
  State<Login> createState() => LoginState();
}

class LoginState extends State<Login> {
  AuthController authController = AuthController();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KPrimaryColor,
        // title: Text('Login'),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        color: KPrimaryColor,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(
              'assets/images/sbslogo.png',
              height: 130,
            ),
            SizedBox(
              height: 20,
            ),
            TextfieldInput(
                controller: nameController,
                hintText: "User name",
                obscureText: false),
            SizedBox(
              height: 20,
            ),
            TextfieldInput(
                controller: passwordController,
                hintText: "Password",
                obscureText: true),
            SizedBox(
              height: 20,
            ),
            FlatButton(
              child: Text(
                'Login',
                style: TextStyle(fontSize: 18),
              ),
              onPressed: () {
                if (nameController.text.trim() != null) {
                  authController.Login(nameController.text.trim(),
                      passwordController.text.trim());
                }
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            // RoundedButton(
            //   text: "Login",
            //   press: () async {
            //     if (nameController.text.trim() != null) {
            //       authController.Login(nameController.text.trim(),
            //           passwordController.text.trim());
            //     }
            //     Navigator.push(context,
            //         MaterialPageRoute(builder: (context) => HomePage()));
            //   },
            // )
          ],
        ),
      ),
    );
  }
}













// // // ignore_for_file: prefer_const_constructors

// // import 'package:flutter/material.dart';

// // import '../constants/constants.dart';
// // import '../widgets/TextfieldInput.dart';
// // import '../widgets/round_Boutton.dart';

// // class LoginScreen extends StatelessWidget {
// //   static const routeName = '/login';
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         backgroundColor: KPrimaryColor,
// //         // title: Text('Login'),
// //         elevation: 0,
// //         leading: IconButton(
// //           icon: Icon(Icons.arrow_back_ios),
// //           onPressed: () {
// //             Navigator.of(context).pop();
// //           },
// //         ),
// //       ),
// //       body: Container(
// //         padding: const EdgeInsets.all(15),
// //         color: KPrimaryColor,
// //         width: double.infinity,
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           crossAxisAlignment: CrossAxisAlignment.stretch,
// //           children: <Widget>[
// //             Image.asset(
// //               'assets/images/sbslogo.png',
// //               height: 130,
// //             ),
// //             SizedBox(
// //               height: 20,
// //             ),
// //             TextfieldInput(hintText: "User name", obscureText: false),
// //             SizedBox(
// //               height: 20,
// //             ),
// //             TextfieldInput(hintText: "Password", obscureText: true),
// //             SizedBox(
// //               height: 20,
// //             ),
// //             RoundedButton(
// //               text: "Login",
// //               press: _handleSubmitted,
// //             )
// //           ],
// //         ),
// //       ),
// //     );
// //   }

// //   _handleSubmitted() {}
// // }
