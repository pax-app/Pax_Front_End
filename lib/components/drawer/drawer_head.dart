import 'package:flutter/material.dart';

class DrawerHead extends StatelessWidget {
  String img, name;
  double qntStars;

  DrawerHead(this.img, this.name, this.qntStars);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            height: 56,
            color: Theme.of(context).primaryColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/paxSidebar.png',
                  height: 40,
                ),
              ],
            )),
        DrawerHeader(
          child: Row(
            children: <Widget>[
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    color: Colors.white,
                    //image: DecorationImage(),
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    border: Border.all(
                      color: Theme.of(context).accentColor,
                      width: 3.0,
                    )),
              ),
              SizedBox(width: 16.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    name,
                    style: TextStyle(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        fontSize: 18),
                  ),
                  SizedBox(height: 6),
                  getUserStars(qntStars, context)
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  Widget getUserStars(double n, BuildContext context) {
    List<Widget> list = new List<Widget>();
    int qntEl = n.toInt();
    for (int i = 1; i <= 5; i++) {
      if (i <= qntEl)
        list.add(IconTheme(
          child: Icon(Icons.star),
          data: IconThemeData(color: Theme.of(context).accentColor),
        ));
      else
        list.add(IconTheme(
          child: Icon(Icons.star_border),
          data: IconThemeData(color: Theme.of(context).accentColor),
        ));
    }

    if ((n - qntEl) > 0) {
      list[qntEl.round()] = IconTheme(
        child: Icon(Icons.star_half),
        data: IconThemeData(color: Theme.of(context).accentColor),
      );
    }
    return Row(children: list);
  }
}
