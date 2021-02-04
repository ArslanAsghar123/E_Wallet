import 'package:e_wallet/utils/my_icons.dart';
import 'package:e_wallet/utils/widget_properties.dart';
import 'package:e_wallet/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ViewOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF7F6FB),
      appBar: AppBar(
        title: appBar(context, "My Orders"),
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
                    height: WidgetProperties.screenHeight(context) * 0.25,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(
                        left: 15, top: 18, right: 15, bottom: 15),
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
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "order #12457896523",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Metropolis',
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Text(
                                  "Placed on 04 Feb,2021 20:12:23",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontFamily: 'Metropolis',
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color(0xffC52929)
                              ),
                              child: Text(
                                "Delivered",
                                style: TextStyle(
                                    fontSize: 11,
                                    fontFamily: 'Metropolis',
                                    color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            CircleAvatar(radius: 25,child: Image.asset('assets/images/brocholi.png',height: 30,),backgroundColor: Color(0xffEEEEEE),),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Brochili Fresh - 100gms",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Metropolis',
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Text(
                                  "USD 4.15",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Metropolis',
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Text(
                                  "x2",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontFamily: 'Metropolis',
                                      color: Colors.grey),
                                ),
                              ],
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end ,
                          children: [
                            Text(
                              "1 Item, Total:",
                              style: TextStyle(
                                  fontSize: 11,
                                  fontFamily: 'Metropolis',
                                  color: Colors.grey),
                            ),
                            Text(
                              "USD 8.30",
                              style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: 'Metropolis',
                                  color: Color(0xffC52929),
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),

                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
