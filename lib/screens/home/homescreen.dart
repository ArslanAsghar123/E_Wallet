import 'package:e_wallet/utils/my_icons.dart';
import 'package:e_wallet/widgets/appbar.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;

  GlobalKey bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F6FB),
      appBar: AppBar(
        title: appBar(context, ""),
        backgroundColor: Color(0xFFF7F6FB),
        elevation: 0.0,
        leading: IconButton(
          icon: SvgPicture.asset(
            pathIcon,
            color: Colors.black,
            height: 20,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Container(
        // height: 70,
        // decoration: BoxDecoration(
        //     color: Colors.white54,
        //     boxShadow: [
        //       BoxShadow(
        //         color: Colors.grey,
        //         offset: Offset.zero,
        //         blurRadius: 10.0,
        //         spreadRadius: 4,
        //       )
        //     ],
        //     borderRadius: BorderRadius.only(
        //       topLeft: Radius.circular(10),
        //       topRight: Radius.circular(10),
        //     )),
      ),
      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
          TabData(
              iconData: Icons.home,
              title: "Home",
              onclick: () {
                final FancyBottomNavigationState fState =
                    bottomNavigationKey.currentState;
                fState.setPage(2);
              }),
          TabData(
            iconData: Icons.search,
            title: "Search",
          ),
          TabData(iconData: Icons.help, title: "Basket"),
          TabData(iconData: Icons.qr_code, title: "Basket")
        ],
        initialSelection: 2,
        key: bottomNavigationKey,
        onTabChangedListener: (position) {
          setState(() {
            currentPage = position;
          });
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[Text("Hello"), Text("World")],
        ),
      ),
    );
  }
}
