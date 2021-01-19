import 'package:e_wallet/screens/authentication/registration.dart';
import 'package:e_wallet/widgets/button.dart';
import 'package:flutter/material.dart';

class GetStartedScreen extends StatefulWidget {
  @override
  _GetStartedScreenState createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color:  Color(0xFFF7F6FB),
          child: Column(
            children: <Widget>[
              Expanded(
                  child: Container(
                      child:
                          Image.asset('assets/images/register_page_screen.png'))),
              Expanded(
                child: Column(
                  children: [
                    Text('Instant',
                        style: TextStyle(
                            fontSize: 28,
                            fontFamily: 'Metropolis',
                            color: Colors.black)),
                    SizedBox(
                      height: 17,
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
                    Text('All you need is your CNIC',
                        style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'Metropolis',
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    Text('and Mobile Number',
                        style: TextStyle(
                          fontSize: 17,
                          fontFamily: 'Metropolis',
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                        ))
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> RegistrationScreen()));
                },
                child: redButton(context, "Get Register"),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
