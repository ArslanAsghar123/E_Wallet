import 'package:e_wallet/utils/my_icons.dart';
import 'package:e_wallet/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardMoney extends StatefulWidget {
  @override
  _CardMoneyState createState() => _CardMoneyState();
}

class _CardMoneyState extends State<CardMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F6FB),
      appBar: AppBar(
        title: appBar(context, "Add Money Through Card"),
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
            margin: EdgeInsets.only(left: 30, top: 40, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Enter Amount',
                        hintStyle: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.w400),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFFC0C0C0), width: 32.0),
                            borderRadius: BorderRadius.circular(12.0))),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  margin: EdgeInsets.only(right: 55),
                  child: Text('Select Amount',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Metropolis',
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.right),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FlatButton(
                            color: Colors.blueAccent,
                            onPressed: () {},
                            child: Text(
                              'USD 20',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            )),
                        FlatButton(
                            color: Colors.blueAccent,
                            onPressed: () {},
                            child: Text(
                              'USD 20',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            )),
                        FlatButton(
                            color: Colors.blueAccent,
                            onPressed: () {},
                            child: Text(
                              'USD 20',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FlatButton(
                            color: Colors.blueAccent,
                            onPressed: () {},
                            child: Text(
                              'USD 20',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            )),
                        FlatButton(
                            color: Colors.blueAccent,
                            onPressed: () {},
                            child: Text(
                              'USD 20',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            )),
                        FlatButton(
                            color: Colors.blueAccent,
                            onPressed: () {},
                            child: Text(
                              'USD 20',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            )),
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
