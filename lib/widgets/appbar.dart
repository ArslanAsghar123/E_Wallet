import 'package:flutter/material.dart';

Widget appBar(BuildContext context, String Text ) {

  return Center(
    child: Row(
      children: [

        //  IconButton(
        //   icon: Icon(Icons.arrow_back, color: Colors.black),
        //   onPressed: () => Navigator.of(context).pop(),
        // ),
        RichText(

          text: TextSpan(
            style: TextStyle(fontSize: 20),
            children: <TextSpan>[
              TextSpan(
                  text: Text,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontFamily: 'Metropolis')),
            ],
          ),
        ),
      ],
    ),
  );
}
