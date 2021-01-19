import 'package:avatar_glow/avatar_glow.dart';
import 'package:e_wallet/widgets/appbar.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        child: Image.asset(
                          'assets/images/registration.png',
                          height: 200,
                          alignment: Alignment.center,
                        ),
                        radius: 70.0,
                      ),
                    )),
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text('Registration',
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: 'Metropolis',
                              color: Colors.black,
                              fontWeight: FontWeight.w800)),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Lorem ipsum dolor sit amet, consetetur ',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Text('sadipscing elitr, sed diam nonumy eirmod ',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  padding: EdgeInsets.only(left: 16, right: 16, top: 25),
                  height: 240,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.mail_outline_outlined,color: Color(0xFF929292)),
                            labelText: 'Enter you mail',
                            labelStyle: TextStyle(
                              fontSize: 15,
                                fontFamily: 'Metropolis',
                                fontWeight: FontWeight.w500),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xFFC0C0C0), width: 32.0),
                                borderRadius: BorderRadius.circular(12.0))),
                      )
                    ],
                  ),
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
