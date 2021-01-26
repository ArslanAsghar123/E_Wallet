import 'package:e_wallet/screens/bank/money_through_bank.dart';
import 'package:e_wallet/screens/bank/money_through_card.dart';
import 'package:e_wallet/utils/my_icons.dart';
import 'package:e_wallet/utils/widget_properties.dart';
import 'package:e_wallet/widgets/app_route.dart';
import 'package:e_wallet/widgets/appbar.dart';
import 'package:e_wallet/widgets/main_screen/divider_draw_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddMoneyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F6FB),
      appBar: AppBar(
        title: appBar(context, "Add Money"),
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
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: WidgetProperties.screenWidth(context) * 0.4,
                width: MediaQuery.of(context).size.width - 48,
                margin: EdgeInsets.only(left: 30, right: 30, top: 30),
                padding: EdgeInsets.only(left: 16, right: 16, top: 25),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      )
                    ]),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 155, bottom: 10),
                      child: Text(
                        "BALANCE",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'MetroPolis',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 115, bottom: 10),
                      child: Text(
                        "USD 100.0",
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: 21,
                            fontFamily: 'MetroPolis',
                            color: Color(0xffC52929),
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 118, bottom: 10),
                      child: Text(
                        "0303-04675465",
                        style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'MetroPolis',
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10, left: 10),
                      child: Text(
                        "Your Remaining Limit for today is USD 350.00 >",
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'MetroPolis',
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                margin: EdgeInsets.only(right: 55),
                child: Text('Choose Method To Add Money',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.right),
              ),
              Container(
                height: WidgetProperties.screenWidth(context) * 0.4,
                width: MediaQuery.of(context).size.width - 48,
                margin: EdgeInsets.only(left: 30, right: 30, top: 20),
                padding: EdgeInsets.only(left: 16, right: 16, top: 25),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      )
                    ]),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        RouteApp.instance.pushPage(context, CardMoney());
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 20, right: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.credit_card_rounded,
                              size: 25,
                              color: Colors.grey,
                            ),
                            Text(
                              'Deposite From Bank Card',
                              style: TextStyle(
                                  fontSize: 15, fontFamily: 'Metropolis'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    DividerScreen(),
                    GestureDetector(
                      onTap: () {
                        RouteApp.instance.pushPage(context, BankMoney());
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 20, right: 76, top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              FontAwesomeIcons.building,
                              color: Colors.grey,
                            ),
                            Text(
                              ' From Bank Account',
                              style: TextStyle(
                                  fontSize: 15, fontFamily: 'Metropolis'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
