import 'package:e_wallet/screens/home/homescreen.dart';
import 'package:e_wallet/widgets/main_screen/bottom_navigationBar.dart';
import 'package:e_wallet/widgets/main_screen/drawer_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBarScreen(),
        body: Stack(children: [DrawerScreen(), HomeScreen()]));
  }
}
