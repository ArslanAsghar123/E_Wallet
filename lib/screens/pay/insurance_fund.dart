import 'package:e_wallet/screens/mobile/confirm_transaction.dart';
import 'package:e_wallet/screens/pay/pay_taxes/pay_tax_select.dart';
import 'package:e_wallet/utils/my_icons.dart';
import 'package:e_wallet/utils/widget_properties.dart';
import 'package:e_wallet/widgets/app_route.dart';
import 'package:e_wallet/widgets/appbar.dart';
import 'package:e_wallet/widgets/main_screen/divider_draw_screen.dart';
import 'file:///E:/E-Wallet/e_wallet/lib/widgets/reuseable_widgets/reuseable_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InsuranceFundScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF7F6FB),
      appBar: AppBar(
        title: appBar(context, "Pay Insurance Fund "),
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
                height: 50,
                margin:
                EdgeInsets.only(top: 50, left: 30, right: 30, bottom: 30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: ReuseableTextfield(
                  lable: 'select NGO',
                  iconSuffix: Icons.search,
                ),
              ),
              Container(
                height: WidgetProperties.screenWidth(context) * 0.58,
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
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          RouteApp.instance
                              .pushPage(context, ConfirmTransactionScreen());
                        },
                        child: Container(
                          margin: EdgeInsets.only(bottom: 20, right: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                FontAwesomeIcons.moneyBill,
                                size: 25,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Life Adam HS',
                                style: TextStyle(
                                    fontSize: 15, fontFamily: 'Metropolis'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      DividerScreen(),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin:
                          EdgeInsets.only(bottom: 20, right: 76, top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                FontAwesomeIcons.moneyBill,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'EDHI',
                                style: TextStyle(
                                    fontSize: 15, fontFamily: 'Metropolis'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      DividerScreen(),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin:
                          EdgeInsets.only(bottom: 20, right: 76, top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                FontAwesomeIcons.moneyBill,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Zakaat',
                                style: TextStyle(
                                    fontSize: 15, fontFamily: 'Metropolis'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      DividerScreen(),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin:
                          EdgeInsets.only(bottom: 20, right: 76, top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                FontAwesomeIcons.moneyBill,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Salayni',
                                style: TextStyle(
                                    fontSize: 15, fontFamily: 'Metropolis'),
                              ),
                            ],
                          ),
                        ),
                      ),
                      DividerScreen(),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin:
                          EdgeInsets.only(bottom: 20, right: 76, top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                FontAwesomeIcons.moneyBill,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                'DWI',
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
              ),
            ],
          )
        ],
      ),
    );
  }
}
