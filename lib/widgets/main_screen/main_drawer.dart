import 'package:e_wallet/utils/my_icons.dart';
import 'package:e_wallet/widgets/main_screen/drawer_list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainDrawer extends StatefulWidget {
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Container(
          child: Row(
            children: [
              Container(
                width: 250,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(26.0),
                      bottomRight: Radius.circular(26.0),),
                  child: Drawer(
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 40,
                            child: DrawerHeader(
                              decoration: BoxDecoration(
                                  color: Color(0xff272727),
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                        "assets/images/Messi.png",
                                      ))), child: null,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: ListView(
                            children: <Widget>[
                              DrawerListView(),
                              DividerScreen(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DividerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      child: Divider(
        height: 1,
        thickness: 1,
        color: Colors.white,
      ),
    );
  }
}
