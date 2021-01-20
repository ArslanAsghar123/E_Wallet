import 'package:flutter/material.dart';


class ReuseableTextfield extends StatelessWidget {
  ReuseableTextfield({this.iconPrefix,this.iconSuffix,@required this.lable});
  final IconData iconPrefix;
  final IconData iconSuffix;
  final String lable;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          prefixIcon: Icon(iconPrefix,color: Color(0xFF929292)),
          suffixIcon: Icon(iconSuffix, color: Color(0xFF929292)),
          hintText: lable,
          hintStyle: TextStyle(
              fontSize: 15,
              fontFamily: 'Metropolis',
              fontWeight: FontWeight.w400
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Color(0xFFC0C0C0), width: 32.0),
              borderRadius: BorderRadius.circular(12.0))),
    );
  }
}
