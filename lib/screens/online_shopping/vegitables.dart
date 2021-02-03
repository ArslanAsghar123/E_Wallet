import 'package:e_wallet/screens/online_shopping/profile/edit_profile.dart';
import 'package:e_wallet/screens/online_shopping/shopping_list/cart.dart';
import 'package:e_wallet/screens/online_shopping/shopping_list/notification.dart';
import 'package:e_wallet/screens/online_shopping/shopping_list/view_orders.dart';
import 'package:e_wallet/screens/online_shopping/shopping_list/wishlist.dart';
import 'package:e_wallet/utils/my_icons.dart';
import 'package:e_wallet/widgets/app_route.dart';
import 'package:e_wallet/widgets/appbar.dart';
import 'package:e_wallet/widgets/reuseable_widgets/resueable_offer_card.dart';
import 'package:e_wallet/widgets/reuseable_widgets/trending_now_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'shopping_list/product_details.dart';

class Vegitables extends StatefulWidget {
  @override
  _VegitablesState createState() => _VegitablesState();
}

class _VegitablesState extends State<Vegitables> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF7F6FB),
      appBar: AppBar(
        title: appBar(context, "Vegitables"),
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
        actions: <Widget>[
          IconButton(
              icon: Icon(
                FontAwesomeIcons.heart,
                color: Colors.black,
                size: 17,
              ),
              onPressed: () {
                RouteApp.instance.pushPage(context, WishList());
              }),
          IconButton(
              icon: Icon(FontAwesomeIcons.shoppingCart,
                  color: Colors.black, size: 17),
              onPressed: () {
                RouteApp.instance.pushPage(context, CartItems());
              }),
          IconButton(
              icon: Icon(FontAwesomeIcons.bell, color: Colors.black, size: 17),
              onPressed: () {
                RouteApp.instance
                    .pushPage(context, ProductNotificationScreen());
              })
        ],
      ),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, top: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 35,
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
                          SizedBox(
                            height: 7,
                          ),
                          GestureDetector(
                            onTap: () {
                              RouteApp.instance
                                  .pushPage(context, EditProfileScreen());
                            },
                            child: Text(
                              "Edit Profile",
                              style: TextStyle(
                                  color: Colors.grey, fontFamily: 'MetroPolis'),
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          GestureDetector(
                            onTap: () {
                              RouteApp.instance.pushPage(context, ViewOrder());
                            },
                            child: Row(
                              children: [
                                Icon(Icons.shopping_bag_outlined,
                                    color: Color(0xffC52929)),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'VIEW ORDERS',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Metropolis',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Row(
                        children: [
                          SpecialOfferProductsCard(
                            image: "assets/images/grocery.png",
                            press: () {},
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SpecialOfferProductsCard(
                            image: "assets/images/organic_food.png",
                            press: () {},
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Trending Now",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Metropolis',
                              fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: GestureDetector(
                      onTap: (){RouteApp.instance.pushPage(context, ProductDetailsScreen());},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,

                        children: [
                          TrendingNowContainer(),
                          SizedBox(width: 10,),
                          TrendingNowContainer(),
                          SizedBox(width: 10,),
                          TrendingNowContainer(),
                          SizedBox(width: 10,),
                          TrendingNowContainer(),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Best Selling Product",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Metropolis',
                              fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: GestureDetector(

                      onTap: (){RouteApp.instance.pushPage(context, ProductDetailsScreen());},
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,

                        children: [
                          TrendingNowContainer(),
                          SizedBox(width: 10,),
                          TrendingNowContainer(),
                          SizedBox(width: 10,),
                          TrendingNowContainer(),
                          SizedBox(width: 10,),
                          TrendingNowContainer(),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


