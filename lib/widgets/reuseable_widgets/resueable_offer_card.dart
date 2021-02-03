import 'package:flutter/material.dart';


class SpecialOfferProductsCard extends StatelessWidget {
  const SpecialOfferProductsCard({
    this.image,
    @required this.press,
  });

  final String image;

  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 350,
      child: GestureDetector(
        onTap: press,
        child: Padding(
          padding: const EdgeInsets.only(right:8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    this.image,
    @required this.press,
  });

  final String image;

  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 350,
      child: Padding(
        padding: EdgeInsets.only(left: 20),
        child: GestureDetector(
          onTap: press,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
