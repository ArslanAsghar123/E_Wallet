import 'package:e_wallet/screens/authentication/login.dart';
import 'package:e_wallet/widgets/app_route.dart';
import 'package:e_wallet/widgets/app_route_replacement.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedContainer(
          transform: Matrix4.translationValues(xOffset, yOffset, 0)
            ..scale(scaleFactor)
            ..rotateY(isDrawerOpen ? -0.5 : 0),
          duration: Duration(milliseconds: 250),
          decoration: BoxDecoration(
              color: Color(0xFFF7F6FB),
              borderRadius: BorderRadius.circular(isDrawerOpen ? 40 : 0.0)),
          child: Column(
            children: [
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    isDrawerOpen
                        ? IconButton(
                            icon: Icon(Icons.arrow_back_ios),
                            onPressed: () {
                              setState(() {
                                xOffset = 0;
                                yOffset = 0;
                                scaleFactor = 1;
                                isDrawerOpen = false;
                              });
                            })
                        : IconButton(
                            icon: Icon(Icons.menu_rounded),
                            onPressed: () {
                              setState(() {
                                xOffset = 230;
                                yOffset = 150;
                                scaleFactor = 0.6;
                                isDrawerOpen = true;
                              });
                            }),
                    Container(
                        height: 38,
                        width: 35,
                        decoration: BoxDecoration(
                          color: Colors.white54,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black12,
                                offset: Offset(0, -1),
                                blurRadius: 15),
                          ],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: IconButton(
                            icon: Icon(
                              Icons.logout,
                              color: Color(0xffC52929),
                            ),
                            onPressed: () {
                              RouteAppReplacement.instance
                                  .pushPage(context, LogInScreen());
                            }))
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
