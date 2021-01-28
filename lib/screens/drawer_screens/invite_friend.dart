import 'package:clipboard/clipboard.dart';
import 'package:e_wallet/utils/my_icons.dart';
import 'package:e_wallet/utils/my_images.dart';
import 'package:e_wallet/widgets/appbar.dart';
import 'package:e_wallet/widgets/button.dart';
import 'package:e_wallet/widgets/reuseableTexts.dart';
import 'package:e_wallet/widgets/reuseable_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InviteFriend extends StatefulWidget {
  @override
  _InviteFriendState createState() => _InviteFriendState();
}

class _InviteFriendState extends State<InviteFriend> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
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
                    child: Image(
                      image: AssetImage('assets/images/invite_friend.png'),
                    ),
                  )),
                  Expanded(
                    child: ReuseableText(
                      boldLable: 'Login',
                      lable1: 'Lorem ipsum dolor sit amet, consetetur',
                      lable2: ' elitr, sed diam nonumy eirmod ',
                    ),
                  ),
                  SizedBox(height: 20,),

                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 180,

                      child: Column(
                        children: [
                          redButton(context, "Send Invites"),
                          //Icon(Icons.arrow_circle_down_outlined)
                        ],
                      ),
                    ),
                  ),


                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 1,
                          width: screenSize.width / 5,
                          margin: EdgeInsets.only(right: 6),
                          color: Colors.grey,
                        ),
                        Text(
                          'OR',
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Metropolis',
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 1,
                          width: screenSize.width / 5,
                          margin: EdgeInsets.only(right: 6),
                          color: Colors.grey,
                        ),
                      ],
                    ),  
                  ),
                  Text(
                    'Copy Link Here',
                    style:
                        TextStyle(fontFamily: 'Metropolis', color: Colors.grey),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      height: 40,
                      width: 220,
                      child: TextField(
                        controller: controller,
                        maxLines: 1,
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: Icon(
                                Icons.copy_outlined,
                                color: Colors.grey,
                              ),
                              onPressed: () async {
                                await FlutterClipboard.copy(controller.text);

                                // ignore: deprecated_member_use
                                Scaffold.of(context).showSnackBar(
                                  SnackBar(
                                      content: Text('✓   Copied to Clipboard')),
                                );
                              },
                            ),
                            hintText: '',
                            hintStyle: TextStyle(
                                fontSize: 10,
                                fontFamily: 'Metropolis',
                                fontWeight: FontWeight.w400),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xFFC0C0C0), width: 32.0),
                                borderRadius: BorderRadius.circular(12.0))),
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 1,
                        width: screenSize.width / 5,
                        margin: EdgeInsets.only(right: 6),
                        color: Colors.grey,
                      ),
                      Text(
                        'OR',
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Metropolis',
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 1,
                        width: screenSize.width / 5,
                        margin: EdgeInsets.only(right: 6),
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Share link Via',
                    style:
                        TextStyle(fontFamily: 'Metropolis', color: Colors.grey),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            AssetImage("assets/images/whatsapp.png"),
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            AssetImage("assets/images/messanger.png"),
                      ),
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage("assets/images/skype.png"),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
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
