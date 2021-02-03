import 'package:e_wallet/widgets/reuseable_widgets/cart_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class CartRow extends StatefulWidget {


  @override
  _CartRowState createState() => _CartRowState();
}

class _CartRowState extends State<CartRow> {
  int weight = 0;
  List<String> _locations = [
    '100 grams',
    '200 grams',
    '300 grams',
    '400 grams'
  ]; // Option 2
  String _selectedLocation;
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Brochli Fresh - ',
          softWrap: true,
          style: TextStyle(fontSize: 12),
        ),
        DropdownButton(
          hint: Text('100 grams'),
          // Not necessary for Option 1
          value: _selectedLocation,
          onChanged: (newValue) {
            setState(() {
              _selectedLocation = newValue;
            });
          },
          items: _locations.map((location) {
            return DropdownMenuItem(
              child: new Text(location),
              value: location,
            );
          }).toList(),
        ),
        Text(
          "\$5.15",
          style: TextStyle(
              fontSize: 13, fontWeight: FontWeight.w900),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            RoundCartIconButton(
              icon: FontAwesomeIcons.minus,
              iconColour: Color(0xffC52929),
              onPressed: () {
                setState(() {
                  weight--;
                });
              },
            ),
            Text(weight.toString()),
            RoundCartIconButton(
              icon: FontAwesomeIcons.plus,
              iconColour: Colors.white,
              fillColour: Color(0xffC52929),
              onPressed: () {
                setState(() {
                  weight++;
                });
              },
            ),
            GestureDetector(
                onTap: (){},
                child: Icon(Icons.add_shopping_cart_outlined,size: 22,)),
            SizedBox(width: 10,),
            GestureDetector(
                onTap: (){},
                child: Icon(Icons.delete,size: 22,)),
            SizedBox(width: 10,)

          ],
        ),

      ],
    );
  }
}