import 'package:circular_check_box/circular_check_box.dart';
import 'package:e_wallet/screens/online_shopping/shopping_list/order_confirmation.dart';
import 'package:e_wallet/utils/my_icons.dart';
import 'package:e_wallet/widgets/app_route.dart';
import 'package:e_wallet/widgets/appbar.dart';
import 'package:e_wallet/widgets/button.dart';
import 'package:e_wallet/widgets/reuseable_widgets/cart_icon_button.dart';
import 'package:e_wallet/widgets/reuseable_widgets/icon_button.dart';
import 'package:e_wallet/widgets/reuseable_widgets/reuseable_cart_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CartItems extends StatefulWidget {
  @override
  _CartItemsState createState() => _CartItemsState();
}

class _CartItemsState extends State<CartItems> {
  bool _value = false;
  bool _value1 = false;
  bool _value2 = false;
  bool _value3 = false;
  bool _value4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF7F6FB),
      appBar: AppBar(
        title: appBar(context, "Cart"),
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
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      CircularCheckBox(
                          value: _value,
                          inactiveColor: Colors.black26,
                          activeColor: Color(0xff62D8A8),
                          checkColor: Colors.white,
                          materialTapTargetSize: MaterialTapTargetSize.padded,
                          onChanged: (bool x) {
                            setState(() {
                              _value = !_value;
                            });
                          }),
                      Container(
                        height: 120,
                        width: 110,
                        margin: EdgeInsets.all(10),
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
                  Row(
                    children: [
                      CircularCheckBox(
                          value: _value1,
                          inactiveColor: Colors.black26,
                          activeColor: Color(0xff62D8A8),
                          checkColor: Colors.white,
                          materialTapTargetSize: MaterialTapTargetSize.padded,
                          onChanged: (bool x) {
                            setState(() {
                              _value1 = !_value1;
                            });
                          }),
                      Container(
                        height: 120,
                        width: 110,
                        margin: EdgeInsets.all(10),
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
                  Row(
                    children: [
                      CircularCheckBox(
                          value: _value2,
                          inactiveColor: Colors.black26,
                          activeColor: Color(0xff62D8A8),
                          checkColor: Colors.white,
                          materialTapTargetSize: MaterialTapTargetSize.padded,
                          onChanged: (bool x) {
                            setState(() {
                              _value2 = !_value2;
                            });
                          }),
                      Container(
                        height: 120,
                        width: 110,
                        margin: EdgeInsets.all(10),
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
                  Row(
                    children: [
                      CircularCheckBox(
                          value: _value3,
                          inactiveColor: Colors.black26,
                          activeColor: Color(0xff62D8A8),
                          checkColor: Colors.white,
                          materialTapTargetSize: MaterialTapTargetSize.padded,
                          onChanged: (bool x) {
                            setState(() {
                              _value3 = !_value3;
                            });
                          }),
                      Container(
                        height: 120,
                        width: 110,
                        margin: EdgeInsets.all(10),
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
                  Row(
                    children: [
                      CircularCheckBox(
                          value: _value4,
                          inactiveColor: Colors.black26,
                          activeColor: Color(0xff62D8A8),
                          checkColor: Colors.white,
                          materialTapTargetSize: MaterialTapTargetSize.padded,
                          onChanged: (bool x) {
                            setState(() {
                              _value4 = !_value4;
                            });
                          }),
                      Container(
                        height: 120,
                        width: 110,
                        margin: EdgeInsets.all(10),
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
                  SizedBox(height: 100,)
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
          borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade500,
                offset: Offset(2.0, 5.0), //(x,y)
                blurRadius: 10.0,
              )
            ]
        ),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircularCheckBox(
                    value: _value4,
                    inactiveColor: Colors.black26,
                    activeColor: Color(0xff62D8A8),
                    checkColor: Colors.white,
                    materialTapTargetSize: MaterialTapTargetSize.padded,
                    onChanged: (bool x) {
                      setState(() {
                        _value4 = !_value4;
                      });
                    }),
                Text("All",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15)),
                SizedBox(
                  width: 40,
                ),
                Text("USD 509.9",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15)),
                SizedBox(
                  width: 8,
                ),
                GestureDetector(
                    onTap: (){RouteApp.instance.pushPage(context, OrderConfirmationScreen());},
                    child: Container(
                    height: 50,
                    width: 140,
                    margin: EdgeInsets.only(top: 10),
                    child: redButton(context, "Check Out"))),
                SizedBox(
                  width: 20,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
