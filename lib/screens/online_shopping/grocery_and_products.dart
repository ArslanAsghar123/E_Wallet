import 'package:e_wallet/screens/home/homescreen.dart';
import 'package:e_wallet/screens/online_shopping/grid_dashboard/grid_dashboard.dart';
import 'package:e_wallet/utils/my_icons.dart';
import 'package:e_wallet/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShoppingHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF7F6FB),
      appBar: AppBar(
        title: appBar(context, "Grocery & Products"),
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
          Container(
            margin: EdgeInsets.only(left: 20,right: 20,top: 20),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "assets/images/grocery.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("CATEGORIES",style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Metropolis',
                      fontSize: 15
                    ),),
                      IconButton(icon: Icon(Icons.search), onPressed: (){})


                    ],
                  ),
                ),
                GridDashboard()

              ],
            ),
          )
        ],
      ),
    );
  }
}
