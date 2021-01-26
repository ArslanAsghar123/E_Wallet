import 'package:flutter/material.dart';

class ReuseableExpansionWidget extends StatelessWidget {
  final String lable;

  const ReuseableExpansionWidget({this.lable});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      leading: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(color: Colors.black26, blurRadius: 10.0),
          ]),
          child: Icon(
            Icons.circle,
            color: Color(0xffC52929),
          )),
      title: Text(
        lable,
        style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w800,
            fontFamily: 'Metropolis',
            color: Colors.black),
      ),
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 50, right: 20, bottom: 20),
          height: 90,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffECEBF0)),
        ),
        Container(
          margin: EdgeInsets.only(left: 50, right: 20, bottom: 20),
          height: 90,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffECEBF0)),
        ),
      ],
    );
  }
}
