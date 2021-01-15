import 'package:flutter/material.dart';

AppBar AppBarMaps({BuildContext context}) {
  return AppBar(
    backgroundColor: Colors.lightBlue[800],
    elevation: 0.0,
    title: Text(
      'Pilih Lokasi',
      style: TextStyle(
        fontFamily: 'Varela',
      ),
    ),
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(
        Icons.chevron_left,
        size: 32.0,
      ),
    ),
  );
}