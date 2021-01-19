import 'dart:async';

import 'package:e_wallet/screens/authentication/get_started.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen1 extends StatefulWidget {
  @override
  _SplashScreen1State createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {

  @override
  void initState() {
    Timer(Duration(seconds: 3), () => Navigator.push(context, MaterialPageRoute(builder: (context)=> GetStartedScreen())));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset('images/qismaticon.png'),
          SizedBox(height: 20),
          SpinKitRipple(color: Colors.redAccent,size: 50,)

        ],
      ),

    );
  }
}
