import 'package:e_wallet/screens/drawer_screens/transaction.dart';
import 'package:e_wallet/screens/home/home.dart';
import 'package:e_wallet/screens/online_shopping/shopping_list/notification.dart';
import 'package:e_wallet/screens/online_shopping/vegitables.dart';
import 'package:e_wallet/utils/my_icons.dart';
import 'package:e_wallet/utils/widget_properties.dart';
import 'package:e_wallet/widgets/app_route.dart';
import 'package:e_wallet/widgets/appbar.dart';
import 'package:e_wallet/widgets/button.dart';
import 'package:e_wallet/widgets/reuseable_widgets/reuseable_cart_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OrderConfirmationScreen extends StatefulWidget {
  @override
  _OrderConfirmationScreenState createState() =>
      _OrderConfirmationScreenState();
}

class _OrderConfirmationScreenState extends State<OrderConfirmationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF7F6FB),
      appBar: AppBar(
        title: appBar(context, "Order Confirmation"),
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
          Container(
            margin: EdgeInsets.all(15),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: WidgetProperties.screenHeight(context) * 0.18,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(
                        left: 20, top: 15, right: 20, bottom: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            offset: Offset(2.0, 5.0), //(x,y)
                            blurRadius: 10.0,
                          )
                        ]),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.grey.shade500,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Martin Alex",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Metropolis'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "2276 Rollins Road, ",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Metropolis',
                                  color: Colors.grey),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              "Merna, Nebraska",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Metropolis',
                                  color: Colors.grey),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              "68856",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Metropolis',
                                  color: Colors.grey),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              "0303 1234567",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Metropolis',
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    "Change",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Metropolis',
                                        color: Color(0xffC52929)),
                                  )),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: WidgetProperties.screenHeight(context) * 0.115,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(
                        left: 20, top: 15, right: 20, bottom: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            offset: Offset(2.0, 5.0), //(x,y)
                            blurRadius: 10.0,
                          )
                        ]),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.credit_card_sharp,
                              color: Colors.grey.shade500,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "1234 **** **** 6789",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Metropolis'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Lorem ipsum dolor \nsit amet, consetetur",
                              maxLines: 3,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Metropolis',
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    "Change",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Metropolis',
                                        color: Color(0xffC52929)),
                                  )),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: WidgetProperties.screenHeight(context) * 0.45,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(
                        left: 20, top: 15, right: 20, bottom: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            offset: Offset(2.0, 5.0), //(x,y)
                            blurRadius: 10.0,
                          )
                        ]),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 120,
                              width: 110,
                              margin: EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                  color: Color(0xffEEEEEE),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Image.asset(
                                  "assets/images/brocholi.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            CartRow(),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 70,
                          child: TextFormField(
                            cursorColor: Theme.of(context).cursorColor,
                            // initialValue: 'Optional message here',
                            maxLength: 20,
                            decoration: InputDecoration(
                              hintText: 'Note Here',
                              labelStyle:
                                  TextStyle(color: Colors.black, fontSize: 10),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xFFC0C0C0), width: 20.0),
                                  borderRadius: BorderRadius.circular(12.0)),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                //  when the TextFormField in focused
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Subtotal:",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Metropolis',
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Shipping fee:",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Metropolis',
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Total",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Metropolis',
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "USD 20.13",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Metropolis',
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "USD 0.13",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Metropolis',
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "USD 20.26",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Metropolis',
                                      color: Colors.black,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: WidgetProperties.screenHeight(context) * 0.17,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(
                        left: 20, top: 15, right: 20, bottom: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            offset: Offset(2.0, 5.0), //(x,y)
                            blurRadius: 10.0,
                          )
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Order Summary (2 Item)",
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Metropolis',
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Subtotal:",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Metropolis',
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Shipping fee:",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Metropolis',
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Total",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Metropolis',
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "USD 20.13",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Metropolis',
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "USD 0.13",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Metropolis',
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "USD 20.26",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'Metropolis',
                                      color: Colors.black,
                                      fontWeight: FontWeight.w800),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),

                  RichText(
                      text: TextSpan(children: <TextSpan>[

                        TextSpan(
                            text: "Upon clicking 'Pay for Order' I confirm I have read and acknowledge all ",

                            style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'Metropolis',
                              color: Colors.grey,
                            )),
                        TextSpan(
                            text: 'Terms & Polices',

                            style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Metropolis',
                                color:Color(0xffC52929),
                                fontWeight: FontWeight.w800),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => RouteApp.instance.pushPage(context, ProductNotificationScreen())),
                      ])),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
          ),
          BottomSheet(context),
        ],
      ),
    );
  }

  Widget BottomSheet(BuildContext context) {
    return Positioned(
      top: 560,
      child: Container(

        height: 120,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade500,
                offset: Offset(2.0, 5.0), //(x,y)
                blurRadius: 10.0,
              )
            ]),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("USD 509.9",
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 15)),

                  GestureDetector(
                      onTap: () {
                        RouteApp.instance.pushPage(context, Vegitables());
                      },
                      child: Container(
                          height: 50,
                          width: 140,
                          margin: EdgeInsets.only(top: 10),
                          child: redButton(context, "Pay Now"))),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
