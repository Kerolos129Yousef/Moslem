import 'package:flutter/material.dart';

class MyTheme {
  static final Color primaryColor= Color(0xFFB7935F);
  static final ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w500),


      ),
      textTheme: TextTheme(
        headline4: TextStyle(
          fontSize: 20,
          color: Colors.black
        ),
        headline5: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.w500
        )
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(
          size: 28,
          //color: Colors.black
        ),
        unselectedIconTheme: IconThemeData(
            size: 26,
            color: Colors.white
        ),
        selectedLabelStyle: TextStyle(
            color: Colors.black
        ),
        selectedItemColor: Colors.black,

      )
  );
}