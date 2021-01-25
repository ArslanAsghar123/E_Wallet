import 'package:avatar_glow/avatar_glow.dart';
import 'package:e_wallet/screens/authentication/forget_pin.dart';
import 'package:e_wallet/screens/home/home.dart';
import 'package:e_wallet/screens/home/homescreen.dart';
import 'package:e_wallet/utils/colors.dart';
import 'package:e_wallet/utils/my_icons.dart';
import 'package:e_wallet/utils/my_images.dart';
import 'package:e_wallet/widgets/appbar.dart';
import 'package:e_wallet/widgets/reuseableTexts.dart';
import 'package:e_wallet/widgets/reuseable_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
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
                          loginImage,
                          height: 200,
                          alignment: Alignment.center,
                        ),
                        radius: 70.0,
                      ),
                    )),
                Expanded(
                  child: ReuseableText(
                    boldLable: 'Login',
                    lable1: 'Lorem ipsum dolor sit amet, consetetur',
                    lable2: ' elitr, sed diam nonumy eirmod ',
                  ),
                ),
                ReuseableContainer(
                  lableTextfield1: 'Enter Email/Phone',
                  lableTextfield2: 'Enter your PIN',
                  iconPrefix1: (Icons.phone_android_sharp),
                  iconPrefix2: (Icons.vpn_key_outlined),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                ),
                SizedBox(
                  height: 45,
                ),
                Container(
                    transform: Matrix4.translationValues(0.0, -30.0, 0.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgetPin()));
                      },
                      child: Text(
                        'Forget PIN?',
                        style: TextStyle(
                            color: AppColors.textColor,
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.w700,
                            fontSize: 12),
                      ),
                    ))
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
