import 'package:flutter/material.dart';


class DividerScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Divider(
        height: 1,
        thickness: 1,color: Colors.grey.shade400,
      ),
    );
  }
}
