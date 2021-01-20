import 'package:avatar_glow/avatar_glow.dart';
import 'package:e_wallet/screens/authentication/pin_screen.dart';
import 'package:e_wallet/utils/colors.dart';
import 'package:e_wallet/utils/otp_keyboard.dart';
import 'package:e_wallet/widgets/appbar.dart';
import 'package:e_wallet/widgets/button.dart';
import 'package:e_wallet/widgets/reuseableTexts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OTPVerification extends StatefulWidget {
  @override
  _OTPVerificationState createState() => _OTPVerificationState();
}

class _OTPVerificationState extends State<OTPVerification> {
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
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.black,
              size: 25,
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
                            child: Image.asset(
                              'assets/images/verification.png',
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
                              SizedBox(height: 20,),


                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 2),
                                child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      OTPDigitTextFieldBox(first: true, last: false),
                                      OTPDigitTextFieldBox(first: false, last: false),
                                      OTPDigitTextFieldBox(first: false, last: false),
                                      OTPDigitTextFieldBox(first: false, last: false),
                                      OTPDigitTextFieldBox(first: false, last: false),
                                      OTPDigitTextFieldBox(first: false, last: true),
                                    ],
                                  )
                                ]),
                              ),
                              SizedBox(height: 12,),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>PinScreen()));
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
                            child: Text(
                              'Resend code in 30 sec',
                              style: TextStyle(
                                  color: AppColors.textColor,
                                  fontFamily: 'Metropolis',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12),
                            ))
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
