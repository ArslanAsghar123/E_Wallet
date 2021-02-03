import 'package:e_wallet/utils/widget_properties.dart';
import 'package:flutter/material.dart';


class ReuseableProductNotificationScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      height: WidgetProperties.screenHeight(context) * 0.115,
      width: MediaQuery.of(context).size.width,
      padding:
      EdgeInsets.only(left: 15, top: 15, right: 15, bottom: 15),
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Your Order Has confirmed",
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
                "Your order number is #12457896523",
                style: TextStyle(
                    fontSize: 11,
                    fontFamily: 'Metropolis',
                    color: Colors.grey),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                "17th Jan, 2020",
                style: TextStyle(
                    fontSize: 11,
                    fontFamily: 'Metropolis',
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.check_circle,
                color: Colors.green,
              ),
            ],
          )
        ],
      ),
    );
  }
}
