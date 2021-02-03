import 'package:flutter/material.dart';


class WishListRow extends StatelessWidget {
  const WishListRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(
          'Brochli Fresh - Lorem ipsum',
          softWrap: true,
          style: TextStyle(fontSize: 12),
        ),
        SizedBox(height: 7,),
        Text.rich(
          TextSpan(
            children: <TextSpan>[
              new TextSpan(
                text: '\$8.99',
                style: new TextStyle(
                  color: Colors.grey,
                  decoration: TextDecoration.lineThrough,
                ),
              ),

              new TextSpan(
                  text: ' \$3.99'
                  ,style: TextStyle(fontWeight: FontWeight.bold)
              ),
            ],
          ),
        ),
        SizedBox(height: 7,),
        Row(

          children: [
            GestureDetector(
                onTap: (){},
                child: Icon(Icons.add_shopping_cart_outlined,size: 18,)),
            SizedBox(width: 10,),
            GestureDetector(
                onTap: (){},
                child: Icon(Icons.delete,size: 18,)),
            SizedBox(width: 10,)
          ],
        )
      ],
    );
  }
}