import 'package:flutter/material.dart';
import 'package:frontend/admin/constants.dart';
import 'package:frontend/admin/controller/MenuController.dart';
import 'package:frontend/admin/screens/main/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Admin Panel',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => MenuController(),
          ),
        ],
        child: MainScreen(),
      ),
    );
  }
}


































// import 'package:flutter/material.dart';
// import 'package:hexcolor/hexcolor.dart';
// import 'package:frontend/constants/constants.dart';
// import 'package:flutter/services.dart';
// import 'package:frontend/Screens/Sign_Screen.dart';
// import 'package:frontend/Screens/Login_Screen.dart';
// import 'package:frontend/Screens/getting_start.dart';
// import 'package:frontend/Screens/welcom_screen.dart';

// import 'Screens/LoginNewdesign.dart';
// import 'admin/screens/dashbord/dashbord_screen.dart';

// // void main() {
// //   SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
// //       .then((_) {
// //     runApp(MyApp());
// //   });
// // }
// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   Color _primaryColor = HexColor('#25272C');
//   Color _accentColor = HexColor('#7CB50A');
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primaryColor: _primaryColor,
//         accentColor: _accentColor,
//         scaffoldBackgroundColor: Colors.grey.shade100,
//         primarySwatch: Colors.grey,
//       ),
//       home: DashboardScreen(),
//       routes: {
//         "/login": (ctx) => LoginPage(),
//         // "/signin": (ctx) => SignIn(),
//       },
//     );
//   }
// }
