import 'package:flutter/material.dart';

class MyTheme {
  static final Color greenColor = Color(0xff39A552);
  static final Color darkBlueColor = Color(0xff42505C);
  static final Color greyBlueColor = Color(0xff79828B);
  static final Color greyColor = Color(0xffA3A3A3);
  static final Color whiteColor = Colors.white;
  static final Color blackColor = Colors.black;

  static final ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      color: greenColor,
    ),
primaryColor: greenColor,
      textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 28,
              fontFamily: "cairo",
              color: whiteColor,
              fontWeight: FontWeight.w900),
          headline2: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: blackColor,
              fontFamily: "kufi"),
          headline3: TextStyle(
              fontSize: 18,
              color: darkBlueColor,
              fontWeight: FontWeight.w500,
              fontFamily: "kufi"),
              headline4: TextStyle(
              fontSize: 14,
              color: greyColor,
              fontFamily: "kufi")));
}
