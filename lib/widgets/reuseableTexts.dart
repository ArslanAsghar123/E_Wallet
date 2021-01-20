import 'package:flutter/material.dart';


class ReuseableText extends StatelessWidget {
  final String lable1;
  final String lable2;
  final String boldLable;

  const ReuseableText({@required this.lable1,@required this.lable2,@required this.boldLable}) ;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Text(boldLable,
            style: TextStyle(
                fontSize: 30,
                fontFamily: 'Metropolis',
                color: Colors.black,
                fontWeight: FontWeight.w800)),
        SizedBox(
          height: 20,
        ),
        Text(lable1,
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'Metropolis',
              fontWeight: FontWeight.w300,
              color: Colors.black,
            )),
        SizedBox(
          height: 15,
        ),
        Text(lable2,
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'Metropolis',
              fontWeight: FontWeight.w300,
              color: Colors.black,
            ))
      ],
    );
  }
}
