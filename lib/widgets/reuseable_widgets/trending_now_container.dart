import 'package:e_wallet/widgets/reuseable_widgets/icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TrendingNowContainer extends StatelessWidget {
  const TrendingNowContainer({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 220,
      width: 150,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              offset: Offset(2.0, 5.0), //(x,y)
              blurRadius: 2.0,
            )
          ]),
      child: Column(
        children: [
          Container(
            height: 130,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Color(0xffEEEEEE),
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset(
                "assets/images/brocholi.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text('Brocholi',style: TextStyle(
              fontFamily: 'Metropolis',
              fontSize: 17,
              fontWeight: FontWeight.w400
          ),),
          SizedBox(height: 5,),
          Text("\$5.15",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontFamily: 'Metropolis'),),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RoundIconButton(icon: FontAwesomeIcons.heart,onPressed: (){

              },),
              RoundIconButton(icon: Icons.shopping_cart_outlined,onPressed: (){},),


            ],
          ),
        ],
      ),
    );
  }
}

