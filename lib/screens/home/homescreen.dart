import 'package:e_wallet/screens/authentication/login.dart';
import 'package:e_wallet/screens/bank/money_through_bank.dart';
import 'package:e_wallet/screens/bank/transfer_money.dart';
import 'package:e_wallet/screens/drawer_screens/invite_friend.dart';
import 'package:e_wallet/screens/home/grid_view_Screen.dart';
import 'package:e_wallet/screens/mobile/mobile_topup.dart';
import 'package:e_wallet/utils/widget_properties.dart';
import 'package:e_wallet/widgets/app_route.dart';
import 'package:e_wallet/widgets/app_route_replacement.dart';
import 'package:e_wallet/widgets/main_screen/divider_draw_screen.dart';
import 'package:e_wallet/widgets/reuseable_widgets/resueable_offer_card.dart';
import 'package:flutter/cupertino.dart';
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
          child: SingleChildScrollView(
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
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, top: 15),
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 30,
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
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Metropolis'),
                          ),
                          Text(
                            "0344-1212332 | 23131-xxxxx",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: WidgetProperties.screenHeight(context) * 0.28,
                  width: MediaQuery.of(context).size.width - 48,
                  margin: EdgeInsets.only(left: 30, right: 30, top: 30),
                  padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        )
                      ]),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'My Balance',
                            style: TextStyle(
                                fontSize: 13, fontFamily: 'Metropolis'),
                          ),
                          SizedBox(
                            width: 85,
                          ),
                          Container(
                            child: Text(
                              'USD 100.00',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Metropolis'),
                            ),
                          ),
                          Container(
                            width: 10,
                            transform:
                                Matrix4.translationValues(-10.0, -10.0, 0.0),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.loop_sharp,
                                color: Color(0xffC52929),
                                size: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                      DividerScreen(),
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xff78A6CA),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: IconButton(
                                    onPressed: () {
                                      RouteApp.instance.pushPage(
                                          context, TransferMoneyScreen());
                                    },
                                    icon: Icon(
                                      Icons.monetization_on,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Transfer',
                                  style: TextStyle(
                                      fontFamily: 'Metropolis',
                                      fontSize: 12,
                                      letterSpacing: -0.5,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'Money',
                                  style: TextStyle(
                                      fontFamily: 'Metropolis',
                                      fontSize: 12,
                                      letterSpacing: -0.5,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xffFAD26F),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: IconButton(
                                    onPressed: () {
                                      RouteApp.instance.pushPage(
                                          context, MobileTopUpScreen());
                                    },
                                    icon: Icon(
                                      Icons.mobile_screen_share_sharp,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Mobile',
                                  style: TextStyle(
                                      fontFamily: 'Metropolis',
                                      fontSize: 12,
                                      letterSpacing: -0.5,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'TopUp',
                                  style: TextStyle(
                                      fontFamily: 'Metropolis',
                                      fontSize: 12,
                                      letterSpacing: -0.5,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xff74BFFD),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: IconButton(
                                    onPressed: () {
                                      RouteApp.instance
                                          .pushPage(context, BankMoney());
                                    },
                                    icon: Icon(
                                      Icons.credit_card_rounded,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Link With',
                                  style: TextStyle(
                                      fontFamily: 'Metropolis',
                                      fontSize: 12,
                                      letterSpacing: -0.5,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'Bank',
                                  style: TextStyle(
                                      fontFamily: 'Metropolis',
                                      fontSize: 12,
                                      letterSpacing: -0.5,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xffBB7DFA),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: IconButton(
                                    onPressed: () {
                                      RouteApp.instance
                                          .pushPage(context, InviteFriend());
                                    },
                                    icon: Icon(
                                      Icons.perm_phone_msg_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Invite',
                                  style: TextStyle(
                                      fontFamily: 'Metropolis',
                                      fontSize: 12,
                                      letterSpacing: -0.5,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'Friend',
                                  style: TextStyle(
                                      fontFamily: 'Metropolis',
                                      fontSize: 12,
                                      letterSpacing: -0.5,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GridViewClassScreen(),
                Padding(
                  padding: const EdgeInsets.only(left: 28.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Excited Offers',
                        style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontSize: 17,
                            letterSpacing: -0.5,
                            fontWeight: FontWeight.w800),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SpecialOfferCard(
                        image: "assets/images/poyneer.png",
                        press: () {},
                      ),
                      SpecialOfferCard(
                        image: "assets/images/offer.png",
                        press: () {},
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
