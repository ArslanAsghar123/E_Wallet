import 'dart:async';

import 'package:avatar_glow/avatar_glow.dart';
import 'package:e_wallet/screens/authentication/verification.dart';
import 'package:e_wallet/utils/my_icons.dart';
import 'package:e_wallet/utils/my_images.dart';
import 'package:e_wallet/widgets/appbar.dart';
import 'package:e_wallet/widgets/reuseableTexts.dart';
import 'package:e_wallet/widgets/reuseable_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:e_wallet/utils/my_icons.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
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
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Center(
        child: Stack(children: [
          Container(
            color: Color(0xFFF7F6FB),
            child: Column(
              children: <Widget>[
                AvatarGlow(
                    startDelay: Duration(milliseconds: 1000),
                    glowColor: Color(0xFFD3C8FC),
                    endRadius: 95.0,
                    duration: Duration(milliseconds: 2000),
                    repeat: true,
                    //showTwoGlows: true,
                    repeatPauseDuration: Duration(milliseconds: 100),
                    child: Material(
                      elevation: 5.0,
                      shape: CircleBorder(),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        child: SvgPicture.asset(
                          registerImage,
                          height: 200,
                          alignment: Alignment.center,
                        ),
                        radius: 70.0,
                      ),
                    )),
                Expanded(
                  child: ReuseableText(
                    boldLable: 'Registration',
                    lable1: 'Lorem ipsum dolor sit amet, consetetur',
                    lable2: 'sadipscing elitr, sed diam nonumy eirmod ',
                  ),
                ),
                ReuseableContainer(
                  lableTextfield1: '+92 (302) xxxxxxx',
                  lableTextfield2: 'Enter your email (optional)',
                  iconPrefix1: (Icons.flag_outlined),
                  iconPrefix2: (Icons.mail_outline_outlined),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OTPVerification()));
                  },
                ),
                SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
