import 'package:e_wallet/screens/home/home.dart';
import 'package:e_wallet/utils/my_icons.dart';
import 'package:e_wallet/widgets/appbar.dart';
import 'package:e_wallet/widgets/button.dart';
import 'package:e_wallet/widgets/reuseable_widgets/reuseable_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TillIDScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F6FB),
      appBar: AppBar(
        title: appBar(
          context,
          'Till Payment',
        ),
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
            margin: EdgeInsets.only(left: 15, top: 30, right: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReuseableTextfield(
                      iconPrefix: Icons.phone_iphone,
                      lable: "Till ID",
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30,bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Amount",style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Metropolis'
                          ),),
                        ],
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(

                          hintText: 'Enter Consumer Reference Number',
                          hintStyle: TextStyle(
                              fontSize: 13,
                              fontFamily: 'Metropolis',
                              fontWeight: FontWeight.w400),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFC0C0C0), width: 32.0),
                              borderRadius: BorderRadius.circular(12.0))
                      ),

                    )
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
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Enter Pin',
                                  hintStyle: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Metropolis',
                                      fontWeight: FontWeight.w800),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color(0xFFC0C0C0),
                                          width: 20.0),
                                      borderRadius:
                                          BorderRadius.circular(12.0))),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Home()));
                          },
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
