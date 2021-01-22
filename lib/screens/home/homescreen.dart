import 'package:e_wallet/utils/my_icons.dart';
import 'package:e_wallet/widgets/appbar.dart';
import 'package:e_wallet/widgets/main_screen/main_drawer.dart';
import 'file:///E:/E-Wallet/e_wallet/lib/widgets/main_screen/bottom_navigationBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F6FB),
      appBar: AppBar(
        title: appBar(context, ""),
        backgroundColor: Color(0xFFF7F6FB),
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(icon: SvgPicture.asset(sideDrawerIcon)),
        actions: [
          Container(
              width: 40,
              decoration: BoxDecoration(color: Color(0xFFF7F6FB), boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 1.0), //(x,y)
                  blurRadius: 6.0,
                )
              ]),
              child: IconButton(
                  icon: Icon(Icons.logout, color: Color(0xffC52929))))
        ],
      ),
      drawer: MainDrawer(),
      bottomNavigationBar: BottomNavigationBarScreen(),
      body: Container(),
    );
  }
}
