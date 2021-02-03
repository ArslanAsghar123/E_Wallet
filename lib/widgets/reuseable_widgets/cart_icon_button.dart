import 'package:flutter/material.dart';

class RoundCartIconButton extends StatelessWidget {
  RoundCartIconButton({@required this.icon,  this.onPressed,this.fillColour,this.iconColour});

  final IconData icon;
  final Function onPressed;
  final Color iconColour;
  final Color fillColour;



  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon,color: iconColour,size: 10,),
      onPressed: onPressed,
      elevation: 2,
      constraints: BoxConstraints.tightFor(
        width: 25,
        height: 20,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),side: BorderSide(color: Color(0xffC52929))),
      fillColor: fillColour,

    );
  }
}
