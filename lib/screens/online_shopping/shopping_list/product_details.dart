import 'package:e_wallet/screens/online_shopping/shopping_list/cart.dart';
import 'package:e_wallet/utils/my_icons.dart';
import 'package:e_wallet/widgets/app_route.dart';
import 'package:e_wallet/widgets/appbar.dart';
import 'package:e_wallet/widgets/button.dart';
import 'package:e_wallet/widgets/reuseable_widgets/icon_button.dart';
import 'package:e_wallet/widgets/reuseable_widgets/trending_now_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductDetailsScreen extends StatefulWidget {
  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  List<String> _locations = [
    '100 grams',
    '200 grams',
    '300 grams',
    '400 grams'
  ]; // Option 2
  String _selectedLocation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF7F6FB),
      appBar: AppBar(
        title: appBar(context, "Product Details"),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffEEEEEE),
                        ),
                        child: Image.asset("assets/images/brocholi.png"),
                      ),
                      Positioned(
                        top: 10,
                        left: 270,
                        child: RoundIconButton(
                          icon: FontAwesomeIcons.heart,
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    height: 24,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Color(0xffC52929),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                        child: Text(
                      'Hot Offer',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Metropolis',
                          fontSize: 12),
                    )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Vegetables',
                    style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Metropolis',
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    'Brocholi lorem iposum sifn ghsi',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Metropolis',
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text.rich(
                    TextSpan(
                      children: <TextSpan>[
                        new TextSpan(
                          text: '\$8.99',
                          style: new TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        new TextSpan(
                          text: ' \$3.99',
                        ),
                      ],
                    ),
                  ),
                  DropdownButton(
                    hint: Text('100 grams'),
                    // Not necessary for Option 1
                    value: _selectedLocation,
                    onChanged: (newValue) {
                      setState(() {
                        _selectedLocation = newValue;
                      });
                    },
                    items: _locations.map((location) {
                      return DropdownMenuItem(
                        child: new Text(location),
                        value: location,
                      );
                    }).toList(),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    'Description',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Metropolis',
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consetetur sadipscing elitr,'
                    ' sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat,'
                    ' sed diam voluptua. At vero eos et accusam. et justo duo dolores et ea rebum. Stet clita '
                    'kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor '
                    'sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Metropolis',
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Related Products',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Metropolis',
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: GestureDetector(
                      onTap: () {
                        RouteApp.instance
                            .pushPage(context, ProductDetailsScreen());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TrendingNowContainer(),
                          SizedBox(
                            width: 10,
                          ),
                          TrendingNowContainer(),
                          SizedBox(
                            width: 10,
                          ),
                          TrendingNowContainer(),
                          SizedBox(
                            width: 10,
                          ),
                          TrendingNowContainer(),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 80,),
                ],
              ),
            ),
          ),
          Positioned(
            top: 580,
            left: 25,
            child: GestureDetector(
              onTap: () {
                RouteApp.instance.pushPage(context, CartItems());
              },
              child:
                  Container(height: 60, child: redButton(context, "Add to cart")),
            ),
          )
        ],
      ),
    );
  }
}
