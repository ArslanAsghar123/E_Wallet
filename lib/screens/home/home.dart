import 'package:e_wallet/screens/bottom_nav_bar_items/help.dart';
import 'package:e_wallet/screens/bottom_nav_bar_items/notifucation.dart';
import 'package:e_wallet/screens/bottom_nav_bar_items/qr_scanner.dart';
import 'package:e_wallet/screens/home/homescreen.dart';
import 'package:e_wallet/screens/mobile/prepaid_load.dart';
import 'package:e_wallet/widgets/main_screen/bottom_navigationBar.dart';
import 'package:e_wallet/widgets/main_screen/drawer_screen.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPage = 0;

  GlobalKey bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Center(
          child: _getPage(currentPage),
        ),
      ),
      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
          TabData(
              iconData: Icons.home,
              title: "Home",
              onclick: () {

              }),
          TabData(
            iconData: FontAwesomeIcons.solidBell,
            title: "Notification",
          ),
          TabData(
              iconData: FontAwesomeIcons.solidQuestionCircle, title: "Help"),
          TabData(iconData: FontAwesomeIcons.qrcode, title: "Scan QR")
        ],
        initialSelection: 0,
        key: bottomNavigationKey,
        onTabChangedListener: (position) {
          setState(() {
            currentPage = position;
          });
        },
      ),
    );
  }

  _getPage(int page) {
    switch (page) {
      case 0:
        return Stack(
          children: [
            DrawerScreen(),
            HomeScreen(),
          ],
        );
      case 1:
        return NotificationScreen();
      case 2:
        return HelpScreen();
      case 3:
        return QRScannerScreen();
    }
  }
}
