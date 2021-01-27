import 'package:e_wallet/screens/home/home.dart';
import 'package:e_wallet/screens/home/homescreen.dart';
import 'package:e_wallet/utils/my_icons.dart';
import 'package:e_wallet/widgets/app_route.dart';
import 'package:e_wallet/widgets/app_route_replacement.dart';
import 'package:e_wallet/widgets/appbar.dart';
import 'package:e_wallet/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ConfirmTransactionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF7F6FB),
      appBar: AppBar(
        title: appBar(context, "Confirm Transaction"),
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
            margin: EdgeInsets.only(left: 40, right: 20, top: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Amount",
                      style: TextStyle(
                          color: Color(0xffC52929),
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Metropolis'),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "USD 100.0",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Metropolis'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Fee",
                      style: TextStyle(
                          color: Color(0xffC52929),
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Metropolis'),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "USD 0.0",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Metropolis'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Reciever Name",
                      style: TextStyle(
                          color: Color(0xffC52929),
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Metropolis'),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Martha Ford",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Metropolis'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Reciever Number",
                      style: TextStyle(
                          color: Color(0xffC52929),
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Metropolis'),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "+1 (604) 12456",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.w800,
                          fontFamily: 'Metropolis'),
                    ),

                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            width: 200,
                            height: 47,
                            child: TextField(decoration: InputDecoration(

                                hintText: 'USD 100.0',
                                hintStyle: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Metropolis',
                                    fontWeight: FontWeight.w800),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Color(0xFFC0C0C0), width: 20.0),
                                    borderRadius: BorderRadius.circular(12.0))
                            ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5,),
                        GestureDetector(
                          onTap: () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Home()));},
                          child: Container(
                            width: 100,
                            child: redButton(context, "Pay"),
                          ),
                        ),
                        SizedBox(
                          height: 80,
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
