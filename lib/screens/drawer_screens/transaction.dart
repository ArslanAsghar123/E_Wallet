import 'package:e_wallet/utils/my_icons.dart';
import 'package:e_wallet/widgets/appbar.dart';
import 'package:e_wallet/widgets/main_screen/divider_draw_screen.dart';
import 'file:///E:/E-Wallet/e_wallet/lib/widgets/reuseable_widgets/reuseable_expansion_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExpansionTileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: appBar(context, 'Transaction History'),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            icon: SvgPicture.asset(
              pathIcon,
              color: Colors.black,
              height: 20,
            ),
            onPressed: () => Navigator.of(context).pop(),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0),
              ReuseableExpansionWidget(
                lable: 'January-2021',
              ),
              DividerScreen(),
              ReuseableExpansionWidget(
                lable: 'February-2021',
              ),
              DividerScreen(),
              ReuseableExpansionWidget(
                lable: 'March-2021',
              ),
              DividerScreen(),
              ReuseableExpansionWidget(
                lable: 'April-2021',
              ),
              DividerScreen(),
              ReuseableExpansionWidget(
                lable: 'May-2021',
              ),
              DividerScreen(),
              ReuseableExpansionWidget(
                lable: 'June-2021',
              ),
              DividerScreen(),
              ReuseableExpansionWidget(
                lable: 'July-2021',
              ),
              DividerScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
