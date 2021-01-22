import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class DrawerListView extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff272727),
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: ListTile(
          leading: Icon(FontAwesomeIcons.user,size: 20,color: Colors.white,),
          title: Text('My Profile',style: TextStyle(
              fontSize: 15,fontFamily: 'Metropolis',color: Colors.white
          ),),
          onTap: () {},
        ),
      ),
    );
  }
}