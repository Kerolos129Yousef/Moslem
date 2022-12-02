import 'package:flutter/material.dart';

class MyTheme {
  static final Color GoldColor= Color(0xFFB7935F);
  static final Color YellowColor= Color(0xFFFACC1D);
  static final Color DarkBlueColor= Color(0xFF141A2E);

  static final ThemeData lightTheme = ThemeData(
    backgroundColor: Colors.white,
      primaryColor: GoldColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w500),
        centerTitle: true

      ),
      textTheme: TextTheme(
          bodyText2:TextStyle(
            fontWeight:FontWeight.w700,
            fontSize: 16
          ),
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
        backgroundColor: GoldColor,
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

      ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Colors.white
    )
  );
  static final ThemeData darkTheme = ThemeData(
    backgroundColor: DarkBlueColor,
      primaryColor: YellowColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
              color: Colors.white
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w500),
          centerTitle: true

      ),
      textTheme: TextTheme(
          bodyText2:TextStyle(
              fontWeight:FontWeight.w700,
              fontSize: 16,
            color: Colors.white
          ),
          headline4: TextStyle(
              fontSize: 20,
              color: Colors.white
          ),
          headline5: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w500
          )
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: DarkBlueColor,
        selectedIconTheme: IconThemeData(
          size: 28,
          color: YellowColor
        ),
        unselectedIconTheme: IconThemeData(
            size: 26,
            color: Colors.white
        ),
        selectedLabelStyle: TextStyle(
            color: YellowColor
        ),
        selectedItemColor: YellowColor,

      ),
      bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: DarkBlueColor
      )
  );
}