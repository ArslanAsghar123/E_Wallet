import 'package:e_wallet/utils/my_icons.dart';
import 'package:e_wallet/utils/widget_properties.dart';
import 'package:e_wallet/widgets/appbar.dart';
import 'package:e_wallet/widgets/button.dart';
import 'package:e_wallet/widgets/reuseable_widgets/reuseable_product_notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F6FB),
      appBar: AppBar(
        title: appBar(
          context,
          'Notification',
        ),
        backgroundColor: Color(0xFFF7F6FB),
        elevation: 0.0,
        leading: IconButton(
          icon: SvgPicture.asset(
            pathIcon,
            color: Colors.black,
            height: 20,
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            child: SingleChildScrollView(
              child: Column(

                children: [
                  Stack(
                    children: [
                      Container(
                        height: WidgetProperties.screenHeight(context) * 0.25,
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(
                            left: 15, top: 15, right: 15, bottom: 15),
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
                                CircleAvatar(),
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
                                  "0303 1234567 I 12453.3641XX",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Metropolis',
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Text(
                                  "Lorem ipsum dolor sit amet,   ",
                                  maxLines: 3,
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Metropolis',
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Text(
                                  "sed diam nonumy eirmod tempor ",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Metropolis',
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Text(
                                  "At vero eos et accusam et justo ",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Metropolis',
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 120,
                        left: 110,
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(15)),
                                height: 40,
                                width: 100,
                                margin: EdgeInsets.only(top: 8),
                                alignment: Alignment.center,
                                child: Text(
                                  'Decline',
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.white,
                                      fontFamily: 'Metropolis'),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color(0xffC52929),
                                    borderRadius: BorderRadius.circular(15)),
                                height: 40,
                                width: 100,
                                margin: EdgeInsets.only(top: 8, right: 10),
                                alignment: Alignment.center,
                                child: Text(
                                  'Accept',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.white,
                                      fontFamily: 'Metropolis'),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                  Stack(
                    children: [
                      Container(
                        height: WidgetProperties.screenHeight(context) * 0.25,
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.only(
                            left: 15, top: 15, right: 15, bottom: 15),
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
                                CircleAvatar(),
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
                                  "0303 1234567 I 12453.3641XX",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Metropolis',
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Text(
                                  "Lorem ipsum dolor sit amet,   ",
                                  maxLines: 3,
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Metropolis',
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Text(
                                  "sed diam nonumy eirmod tempor ",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Metropolis',
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Text(
                                  "At vero eos et accusam et justo ",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Metropolis',
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 120,
                        left: 110,
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(15)),
                                height: 40,
                                width: 100,
                                margin: EdgeInsets.only(top: 8),
                                alignment: Alignment.center,
                                child: Text(
                                  'Decline',
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.white,
                                      fontFamily: 'Metropolis'),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Color(0xffC52929),
                                    borderRadius: BorderRadius.circular(15)),
                                height: 40,
                                width: 100,
                                margin: EdgeInsets.only(top: 8, right: 10),
                                alignment: Alignment.center,
                                child: Text(
                                  'Accept',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.white,
                                      fontFamily: 'Metropolis'),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30, bottom: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Other Notification",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Metropolis'),
                            ),
                            Text(
                              "Hide",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Metropolis',
                              color: Colors.blue,
                                decoration: TextDecoration.underline,),
                            ),
                          ],
                        ),
                      ),
                      ReuseableProductNotificationScreen(),
                      SizedBox(
                        height: 10,
                      ),
                      ReuseableProductNotificationScreen(),
                      SizedBox(
                        height: 10,
                      ),
                      ReuseableProductNotificationScreen(),
                      SizedBox(
                        height: 10,
                      ),
                      ReuseableProductNotificationScreen(),
                      SizedBox(
                        height: 10,
                      ),
                      ReuseableProductNotificationScreen(),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
