import 'package:e_wallet/utils/colors.dart';
import 'package:flutter/material.dart';

class OTPDigitTextFieldBox extends StatelessWidget {
  final bool first;
  final bool last;
  const OTPDigitTextFieldBox(
      {Key key, @required this.first, @required this.last})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,

          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            hintText: "*",
            hintStyle: TextStyle(

            ),
            // contentPadding: EdgeInsets.all(0),
            counter: Offstage(),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.grey),
                ),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(width: 2, color: AppColors.textColor),
                ),



          ),
        ),
      ),
    );
  }
}