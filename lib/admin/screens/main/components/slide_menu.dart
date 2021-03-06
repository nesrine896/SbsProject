import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frontend/admin/screens/dashbord/listeStaff.dart';

import '../../dashbord/listProject.dart';
import '../../dashbord/notification.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child:
                Image.asset("assets/images/logosbs.png", width: 50, height: 50),
          ),
          DrawerListTile(
            title: "Dashboard",
            svgSrc: "assets/icons/menu_dashbord.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Project",
            svgSrc: "assets/icons/menu_tran.svg",
            press: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProjectScreen()),
            ),
          ),
          DrawerListTile(
              title: "Staff",
              svgSrc: "assets/icons/menu_doc.svg",
              press: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StaffScreen()),
                );
              }),
          DrawerListTile(
            title: "Notification",
            svgSrc: "assets/icons/menu_notification.svg",
            press: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProjectScreen()),
            ),
          ),
          DrawerListTile(
            title: "Profile",
            svgSrc: "assets/icons/menu_profile.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Settings",
            svgSrc: "assets/icons/menu_setting.svg",
            press: () async {
              // Navigator.of(context).pushAndRemoveUntil(
              //     MaterialPageRoute(builder: (context) => SettingScreen()),
              //     (Route<dynamic> route) => false);
            },
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}
