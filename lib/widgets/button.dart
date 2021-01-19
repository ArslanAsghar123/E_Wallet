import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';



Widget redButton(BuildContext context,  String lable) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 16.0),
    decoration: BoxDecoration(
        color: Color(0xffC52929), borderRadius: BorderRadius.circular(15)),
    width: MediaQuery.of(context).size.width - 48,
    alignment: Alignment.center,
    child: Text(
      lable,
      style: TextStyle(fontSize: 16.0, color: Colors.white,fontFamily: 'Metropolis'),
    ),
  );
}
