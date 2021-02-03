import 'package:e_wallet/screens/online_shopping/vegitables.dart';
import 'package:e_wallet/widgets/app_route.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class GridDashboard extends StatelessWidget {
  Items item1 = new Items(
      title: "Vegetables",
      event: "300 Products",
      img: "assets/images/vegitables.png");

  Items item2 = new Items(
    title: "Fruits",
    event: "120 Products",
    img: "assets/images/fruite.png",
  );
  Items item3 = new Items(
    title: "Bakery",
    event: "95 Products",
    img: "assets/images/bakery.png",
  );
  Items item4 = new Items(
    title: "House Hold",
    event: "195 Products",
    img: "assets/images/house_hold.png",
  );
  Items item5 = new Items(
    title: "Proteins",
    event: "210 Products",
    img: "assets/images/proteins.png",
  );
  Items item6 = new Items(
    title: "Bevarages",
    event: "290 Products",
    img: "assets/images/bevarages.png",
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
    var color = 0xffFFFFFF;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: myList.map((data) {
            return GestureDetector(
              onTap: () {
                RouteApp.instance.pushPage(context, Vegitables());
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Color(color),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        offset: Offset(2.0, 5.0), //(x,y)
                        blurRadius: 2.0,
                      )
                    ]),
                child: Container(
                  height: 40,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        data.img,
                        width: 42,
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Text(data.title,
                          style: TextStyle(
                              fontFamily: 'Metropolis',
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600)),
                      SizedBox(
                        height: 8,
                      ),
                      Text(data.event,
                          style: TextStyle(
                              fontFamily: 'Metropolis',
                              color: Colors.grey,
                              fontSize: 11,
                              fontWeight: FontWeight.w600)),
                    ],
                  ),
                ),
              ),
            );
          }).toList()),
    );
  }
}

class Items {
  String title;
  String event;
  String img;
  String onPressed;

  Items({this.title, this.event, this.img, this.onPressed});
}
