import 'dart:async';

import 'package:avatar_glow/avatar_glow.dart';
import 'package:e_wallet/screens/authentication/pin_screen.dart';
import 'package:e_wallet/utils/colors.dart';
import 'package:e_wallet/utils/my_icons.dart';
import 'package:e_wallet/utils/my_images.dart';
import 'package:e_wallet/utils/otp_keyboard.dart';
import 'package:e_wallet/widgets/appbar.dart';
import 'package:e_wallet/widgets/button.dart';
import 'file:///E:/E-Wallet/e_wallet/lib/widgets/reuseable_widgets/reuseableTexts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OTPVerification extends StatefulWidget {
  @override
  _OTPVerificationState createState() => _OTPVerificationState();
}

class _OTPVerificationState extends State<OTPVerification> {
  Timer _timer;
  int _start = 30;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          if (!mounted) return;
          setState(() {
            timer.cancel();
          });
        } else {
          if (!mounted) return;
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: appBar(
            context,
            '',
          ),
          backgroundColor: Color(0xFFF7F6FB),
          elevation: 0.0,
          leading: IconButton(
            icon:  SvgPicture.asset(
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
                              verificationImage,
                              height: 200,
                              alignment: Alignment.center,
                            ),
                            radius: 70.0,
                          ),
                        )),
                    Expanded(
                      child: ReuseableText(
                        boldLable: 'Verification',
                        lable1: 'Lorem ipsum dolor sit amet, consetetur',
                        lable2: 'sadipscing elitr, sed diam nonumy eirmod ',
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          margin:
                              EdgeInsets.only(left: 30, right: 30, bottom: 140),
                          padding:
                              EdgeInsets.only(left: 16, right: 16, top: 25),
                          height: 160,
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
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 2),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          OTPDigitTextFieldBox(
                                              first: true, last: false),
                                          OTPDigitTextFieldBox(
                                              first: false, last: false),
                                          OTPDigitTextFieldBox(
                                              first: false, last: false),
                                          OTPDigitTextFieldBox(
                                              first: false, last: true),
                                        ],
                                      )
                                    ]),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => PinScreen()));
                                },
                                child: Column(
                                  children: [
                                    redButton(context, 'Continue'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                            transform:
                                Matrix4.translationValues(0.0, -120.0, 0.0),
                            child:

                            Text(
                              'Resend code in ${_start} sec',
                              style: TextStyle(
                                  color: AppColors.textColor,
                                  fontFamily: 'Metropolis',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12),
                            )
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
