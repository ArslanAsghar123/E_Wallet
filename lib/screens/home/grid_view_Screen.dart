import 'package:e_wallet/screens/drawer_screens/add_money.dart';
import 'package:e_wallet/screens/drawer_screens/transaction.dart';
import 'package:e_wallet/widgets/app_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridViewClassScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: EdgeInsets.only(left: 25, right: 20, top: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(radius: 18,backgroundColor: Color(0xffC7CFE2),),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Pay Bills",
                        style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontSize: 12,
                            letterSpacing: -0.5,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(radius: 18,backgroundColor: Color(0xffD9DCF2),),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Online Shopping",
                        style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontSize: 12,
                            letterSpacing: -0.5,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: 20,)
                    ],
                  ),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(

                    children: [
                      CircleAvatar(radius: 18,backgroundColor: Color(0xffF7EACD),),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Pay Taxes",
                        style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontSize: 12,
                            letterSpacing: -0.5,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(radius: 18,backgroundColor: Color(0xffCFE4F9),),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Insurances Fund",
                        style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontSize: 12,
                            letterSpacing: -0.5,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: 21,)
                    ],
                  ),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                          onTap: (){
                            RouteApp.instance.pushPage(context, AddMoneyScreen());
                          },
                          child: CircleAvatar(radius: 18,backgroundColor: Color(0xffD4E9D8),)),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Add money",
                        style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontSize: 12,
                            letterSpacing: -0.5,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                          onTap: (){
                            RouteApp.instance.pushPage(context, ExpansionTileScreen());
                          },
                          child: CircleAvatar(radius: 18,backgroundColor: Color(0xffD5E7DF),)),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Transaction History",
                        style: TextStyle(
                            fontFamily: 'Metropolis',
                            fontSize: 12,
                            letterSpacing: -0.5,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: 2,)
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
