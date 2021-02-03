import 'package:e_wallet/utils/my_icons.dart';
import 'package:e_wallet/widgets/appbar.dart';
import 'package:e_wallet/widgets/reuseable_widgets/reuseable_product_notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductNotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF7F6FB),
      appBar: AppBar(
        title: appBar(context, "notification"),
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

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
