import 'package:e_wallet/screens/bottom_nav_bar_items/till_id.dart';
import 'package:e_wallet/utils/my_icons.dart';
import 'package:e_wallet/widgets/app_route.dart';
import 'package:e_wallet/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class QRScannerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFF7F6FB),
      appBar: AppBar(
        title: appBar(
          context,
          'Scan QR',
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
            margin: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: Container(
                    height: 250,
                    child: Image.asset("assets/images/qr.png"),
                  ),
                ),
                Text("Scan a valid QR Code to initiate the Payment",style: TextStyle(fontFamily: 'Metropolis'),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 1,
                      width: screenSize.width / 5,
                      margin: EdgeInsets.only(right: 6),
                      color: Colors.grey,
                    ),
                    Text(
                      'OR',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Metropolis',
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 1,
                      width: screenSize.width / 5,
                      margin: EdgeInsets.only(right: 6),
                      color: Colors.grey,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: (){},
                      child: Column(
                        children: [
                          Container(height: 40,child:Image.asset("assets/images/gallery.png")),
                          SizedBox(height: 15,),
                          Text("Scan from gallery",style: TextStyle(fontFamily: 'Metropolis'),)
                        ],
                      ),
                    ),
                    Column(

                      children: [
                        GestureDetector(
                          onTap: (){RouteApp.instance.pushPage(context, TillIDScreen());},
                          child: Container(
                              height: 40,
                              child:Image.asset("assets/images/till_id.png",)),
                        ),
                        SizedBox(height: 15,),
                        Text("Scan from gallery",style: TextStyle(fontFamily: 'Metropolis'),)
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
