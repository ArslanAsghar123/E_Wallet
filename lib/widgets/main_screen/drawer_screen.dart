import 'package:e_wallet/screens/authentication/login.dart';
import 'package:e_wallet/screens/drawer_screens/change_pin.dart';
import 'package:e_wallet/screens/drawer_screens/invite_friend.dart';
import 'package:e_wallet/screens/drawer_screens/my_profile.dart';
import 'package:e_wallet/utils/my_icons.dart';
import 'package:e_wallet/widgets/app_route.dart';
import 'package:e_wallet/widgets/app_route_replacement.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(top: 50, left: 20, bottom: 33),
          color: Color(0xff272727),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/images/Messi.png'),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ahmad Shahzad",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "0344-1212332 | 23131-xxxxx",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  ListView(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.person_outline,
                          color: Colors.white54,
                        ),
                        title: Text(
                          'My Profile',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Metropolis',
                              fontSize: 13),
                        ),
                        onTap: () { RouteApp.instance
                            .pushPage(context, ProfileScreen());},
                      ),
                      Divider(
                        height: 1,
                        color: Colors.white,
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.vpn_key_outlined,
                          color: Colors.white54,
                        ),
                        title: Text(
                          'Change Pin',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Metropolis',
                              fontSize: 13),
                        ),
                        onTap: () {
                          RouteApp.instance.pushPage(context, ChangePin());
                        },
                      ),
                      Divider(
                        height: 1,
                        color: Colors.white,
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.share_rounded,
                          color: Colors.white54,
                        ),
                        title: Text(
                          'Invite Friend',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Metropolis',
                              fontSize: 13),
                        ),
                        onTap: () {
                          RouteApp.instance.pushPage(context, InviteFriend());
                        },
                      ),
                      Divider(
                        height: 1,
                        color: Colors.white,
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.loop_sharp,
                          color: Colors.white54,
                        ),
                        title: Text(
                          'Transaction',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Metropolis',
                              fontSize: 13),
                        ),
                        onTap: () {},
                      ),
                      Divider(
                        height: 1,
                        color: Colors.white,
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.add_circle_outline,
                          color: Colors.white54,
                        ),
                        title: Text(
                          'Add Money',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Metropolis',
                              fontSize: 13),
                        ),
                        onTap: () {},
                      ),
                      Divider(
                        height: 1,
                        color: Colors.white,
                      ),
                      ListTile(
                        leading: Icon(
                          Icons.logout,
                          color: Colors.white54,
                        ),
                        title: Text(
                          'Sign Out',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Metropolis',
                              fontSize: 13),
                        ),
                        onTap: () {RouteAppReplacement.instance.pushPage(context, LogInScreen());},
                      ),
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Text('Version 1.8.12',
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontWeight: FontWeight.w200,
                          fontFamily: 'Metropolis')),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
