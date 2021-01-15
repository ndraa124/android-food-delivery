import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

AppBar AppBarDetail({BuildContext context, int totalItem, String id_pelanggan, bool isLogin, VoidCallback getTotalItem, VoidCallback getTotalItemHome}) {
  return AppBar(
    backgroundColor: Colors.lightBlue[800],
    elevation: 0.0,
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
        getTotalItemHome();
      },
      icon: Icon(
        Icons.chevron_left,
        size: 32.0,
      ),
    ),
    actions: [
      Badge(
        badgeContent: Text(
          '$totalItem',
          style: TextStyle(
            color: Colors.black,
            fontSize: 10.0,
          ),
        ),
        showBadge: totalItem == 0 ? false : true,
        position: BadgePosition.bottomEnd(
          bottom: 5.0,
          end: 4.0,
        ),
        badgeColor: Colors.white,
        toAnimate: true,
        animationDuration: Duration(milliseconds: 200),
        animationType: BadgeAnimationType.scale,
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
        ),
      ),
    ],
  );
}