import 'package:e_wallet/utils/my_icons.dart';
import 'package:e_wallet/utils/my_images.dart';
import 'package:e_wallet/utils/widget_properties.dart';
import 'package:e_wallet/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BankMoney extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F6FB),
      appBar: AppBar(
        title: appBar(context, "Add Money Through Bank"),
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
        child: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: SvgPicture.asset(connectBankImage))),
              Expanded(
                child: Column(
                  children: <Widget>[
                    Text('Now you can easily Add Money from your bank ',
                        style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Metropolis',
                          color: Colors.black,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    RichText(
                        text: TextSpan(children: <TextSpan>[
                      TextSpan(
                          text: ' "On The Go"',
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'Metropolis',
                              color: Colors.black,
                              fontWeight: FontWeight.w800)),
                      TextSpan(
                          text: ' by using the following methods',
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Metropolis',
                            color: Colors.black,
                          )),
                    ])),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Color(0xffC52929),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'STEP',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Metropolis'),
                                ),
                                Text("1",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.only(left: 10,right: 5,top: 2),
                              height: 60,
                              width: 250,
                              decoration: BoxDecoration(
                                color: Color(0xffECEBF0),
                                borderRadius: BorderRadius.circular(2),
                              ),
                              child: Text(
                                'Lorem ipsum dolor sit amet, consetetur sadi pscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna',
                                maxLines: 3,
                                style: TextStyle(fontSize: 11),
                              )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20,right: 5),
                      child: Row(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Color(0xffC52929),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'STEP',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Metropolis'),
                                ),
                                Text("2",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10,right: 5,top: 2),
                            height: 60,
                            width: 250,
                            decoration: BoxDecoration(
                              color: Color(0xffECEBF0),
                              borderRadius: BorderRadius.circular(2),
                            ),
                            child: Text(
                              'Lorem ipsum dolor sit amet, consetetur sadi pscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna',
                              maxLines: 3,
                              style: TextStyle(fontSize: 11),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Color(0xffC52929),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'STEP',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Metropolis'),
                                ),
                                Text("3",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                          Container(
                            height: 60,
                            width: 250,
                            padding: EdgeInsets.only(left: 10,right: 5,top: 2),
                            decoration: BoxDecoration(
                              color: Color(0xffECEBF0),
                              borderRadius: BorderRadius.circular(2),
                            ),
                            child: Text(
                              'Lorem ipsum dolor sit amet, consetetur sadi pscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna',
                              maxLines: 3,
                              style: TextStyle(fontSize: 11),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
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
