import 'package:e_wallet/utils/my_icons.dart';
import 'package:e_wallet/utils/my_images.dart';
import 'package:e_wallet/widgets/appbar.dart';
import 'package:e_wallet/widgets/button.dart';
import 'package:e_wallet/widgets/reuseableTexts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InviteFriend extends StatefulWidget {
  @override
  _InviteFriendState createState() => _InviteFriendState();
}

class _InviteFriendState extends State<InviteFriend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F6FB),
      appBar: AppBar(
        title: appBar(context, 'Invite Friends'),
        backgroundColor: Colors.transparent,
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
        child: Stack(
          children: [
           Container(
            color: Color(0xFFF7F6FB),
            child: Column(
              children: <Widget>[
                Expanded(
                    child: Container(
                        child: SvgPicture.asset(inviteFriendImage))),

                      Expanded(
                        child: ReuseableText(
                          boldLable: 'Login',
                          lable1: 'Lorem ipsum dolor sit amet, consetetur',
                          lable2: ' elitr, sed diam nonumy eirmod ',
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                            width: 170, child: redButton(context, "Send Invites")),
                      ),
                Row(
                  children: [
                    Divider(
                      height: 5,
                      color: Colors.black,
                    ),

                  ],
                )


              ],
            ),
          ),
      ],
        ),
      ),
    );
  }
}
