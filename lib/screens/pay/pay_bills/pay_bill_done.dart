import 'package:e_wallet/screens/bank/bank_selection.dart';
import 'package:e_wallet/screens/cnic/cnic_screen.dart';
import 'package:e_wallet/screens/mobile/confirm_transaction.dart';
import 'package:e_wallet/screens/mobile/mobile_account.dart';
import 'package:e_wallet/utils/my_icons.dart';
import 'package:e_wallet/utils/widget_properties.dart';
import 'package:e_wallet/widgets/app_route.dart';
import 'package:e_wallet/widgets/appbar.dart';
import 'package:e_wallet/widgets/button.dart';
import 'package:e_wallet/widgets/main_screen/divider_draw_screen.dart';
import 'file:///E:/E-Wallet/e_wallet/lib/widgets/reuseable_widgets/reuseable_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PayBillsDoneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF7F6FB),
      appBar: AppBar(
        title: appBar(context, "Pay Bills "),
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
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 50,
                margin:
                EdgeInsets.only(top: 50, left: 30, right: 30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: ReuseableTextfield(
                  lable: 'Electricity',
                  enabled: false,

                  iconPrefix: FontAwesomeIcons.lightbulb,
                  iconSuffix: Icons.check_circle,
                ),
              ),
              Container(
                height: 50,
                margin:
                EdgeInsets.only(top: 20, left: 30, right: 30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: ReuseableTextfield(
                  lable: 'PESCO',
                  enabled: false,

                  iconPrefix: FontAwesomeIcons.lightbulb,
                  iconSuffix: Icons.check_circle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:38.0,top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("What is Reference No",style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Metropolis'
                    ),),
                  ],
                ),
              ),
              Container(
                  height: 50,
                  margin:
                  EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: TextField(
                    decoration: InputDecoration(

                        hintText: 'Enter Consumer Reference Number',
                        hintStyle: TextStyle(
                            fontSize: 13,
                            fontFamily: 'Metropolis',
                            fontWeight: FontWeight.w400),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFC0C0C0), width: 32.0),
                            borderRadius: BorderRadius.circular(12.0))
                    ),

                  )
              ),
              SizedBox(height: 280,),
              GestureDetector(
                onTap: (){
                  RouteApp.instance.pushPage(context, ConfirmTransactionScreen());
                },
                child: redButton(context, "Next"),
              )


            ],
          )
        ],
      ),
    );
  }
}
