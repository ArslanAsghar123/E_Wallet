import 'package:e_wallet/widgets/button.dart';
import 'file:///E:/E-Wallet/e_wallet/lib/widgets/reuseable_widgets/reuseable_textfield.dart';
import 'package:flutter/material.dart';

class SingleFieldContainer extends StatelessWidget {
  final String lableTextfield1;

  final IconData iconPrefix1;

  final IconData iconSufix1;

  final Function onPressed;

  const SingleFieldContainer(
      {@required this.lableTextfield1,
      this.iconPrefix1,
      this.iconSufix1,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 30,
        right: 30,
      ),
      padding: EdgeInsets.only(left: 16, right: 16, top: 25),
      height: 260,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            )
          ]),
      child: Column(
        children: <Widget>[
          ReuseableTextfield(
            lable: lableTextfield1,
            iconPrefix: iconPrefix1,
            iconSuffix: iconSufix1,
          ),
          SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: onPressed,
            child: redButton(context, 'Continue'),
          )
        ],
      ),
    );
  }
}
