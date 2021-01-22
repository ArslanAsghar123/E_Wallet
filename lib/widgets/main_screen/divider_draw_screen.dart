import 'package:flutter/material.dart';


class DividerScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      padding: EdgeInsets.only(left: 40),
      child: Divider(
        height: 1,
        thickness: 1,color: Colors.white,
      ),
    );
  }
}
