import 'package:e_wallet/utils/my_icons.dart';
import 'package:e_wallet/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HelpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F6FB),
      appBar: AppBar(
        title: appBar(
          context,
          '',
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
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10,),
              Reuseable_expansion_help_screen(),
              Reuseable_expansion_help_screen(),
              Reuseable_expansion_help_screen(),
              Reuseable_expansion_help_screen(),
              Reuseable_expansion_help_screen(),
              Reuseable_expansion_help_screen(),
            ],
          ),
        ),
      ]),
    );
  }
}

class Reuseable_expansion_help_screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15,right: 15,top: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Theme.of(context).hintColor.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5)
        ],
      ),
      child: SingleChildScrollView(
        child: ExpansionTile(
          title: Text(
            "Lorem ipsum dolor sit ametr ",
            style: TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.w800,
                fontFamily: 'Metropolis',
                color: Colors.black),
          ),
          children: <Widget>[
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15,right: 15,bottom: 15),
                  child: Text(
                      "elitr, sed diam nonumy eirmod tempor invidunt ut labore"
                      " et dolore magna aliquyam erat, sed diam voluptua. At vero "
                      "eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
