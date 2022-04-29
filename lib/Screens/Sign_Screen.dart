// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:frontend/Screens/homepage.dart';

// import '../constants/constants.dart';
// import '../services/api.dart';
// import '../widgets/TextfieldInput.dart';
// import '../widgets/round_Boutton.dart';

// class SignIn extends StatefulWidget {
//   static const routName = "/signin";
//   @override
//   State<SignIn> createState() => _SignInState();
// }

// class _SignInState extends State<SignIn> {
//   AuthController authController = AuthController();

//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   // final TextEditingController confirmePwdController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: KPrimaryColor,
//         // title: Text('Login'),
//         elevation: 0,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back_ios),
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         ),
//       ),
//       body: LayoutBuilder(
//         builder: (BuildContext context, BoxConstraints viewportConstraints) {
//           return Container(
//             padding: const EdgeInsets.symmetric(
//               horizontal: 30,
//             ),
//             color: KPrimaryColor,
//             width: double.infinity,
//             child: SingleChildScrollView(
//               child: ConstrainedBox(
//                 constraints: BoxConstraints(
//                   minHeight: viewportConstraints.maxHeight,
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                   children: <Widget>[
//                     Image.asset(
//                       'assets/images/signup.png',
//                       width: 400,
//                     ),
//                     TextfieldInput(
//                         controller: nameController,
//                         hintText: 'User name',
//                         obscureText: false),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     TextfieldInput(
//                         controller: emailController,
//                         hintText: 'Email Adress',
//                         obscureText: false),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     TextfieldInput(
//                         controller: passwordController,
//                         hintText: 'Password',
//                         obscureText: true),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     // TextfieldInput(
//                     //     controller: confirmePwdController,
//                     //     hintText: 'Confirm Password',
//                     //     obscureText: true),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     RoundedButton(
//                       text: 'SignUp',
//                       press: () async {
//                         if (emailController != null) {
//                           authController.Signin(
//                               nameController.text.trim(),
//                               emailController.text.trim(),
//                               passwordController.text.trim());
//                         }
//                         //   Navigator.push(
//                         //       context,
//                         //       MaterialPageRoute(
//                         //           builder: (context) => HomePage()));
//                       },
//                     ),
//                     SizedBox(
//                       height: 10,
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
