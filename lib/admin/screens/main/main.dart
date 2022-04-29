import 'package:flutter/material.dart';
import 'package:frontend/admin/responsive.dart';
import 'package:frontend/admin/screens/dashbord/dashbord_screen.dart';
import 'package:frontend/admin/screens/dashbord/listProject.dart';
import 'package:provider/provider.dart';

import '../../controller/MenuController.dart';
import 'components/slide_menu.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: context.read<MenuController>().scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen
            if (Responsive.isDesktop(context))
              Expanded(
                // default flex = 1
                // and it takes 1/6 part of the screen
                child: SideMenu(),
              ),
            Expanded(
              // It takes 5/6 part of the screen
              flex: 5,
              child: DashboardScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
