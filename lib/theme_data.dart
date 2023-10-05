import 'package:flutter/material.dart';

class MyThemeData {
  static Color primarycolor = Color(0xffB7935F);
  static Color darkprimary = Color(0xff0f1424);
  static Color yellowocolor = Color(0xfffacc1d);
  static Color blackcolor = Color(0xff242424);
  static ThemeData lighttheme = ThemeData(
      colorScheme:  ColorScheme(
          brightness: Brightness.light,
          primary: primarycolor,
          onPrimary: Colors.black,
          secondary: blackcolor,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          background: primarycolor,
          onBackground: Colors.grey,
          surface: Colors.blueGrey,
          onSurface: Colors.white),
      scaffoldBackgroundColor: Colors.transparent,
      textTheme: TextTheme(
        bodySmall: TextStyle(
          fontFamily: 'elMessiri',
          fontSize: 20,
          color: blackcolor,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          fontFamily: 'elMessiri',
          fontSize: 25,
          color: Color(0xffFFFFFF),
          fontWeight: FontWeight.w700,
        ),
        bodyLarge: TextStyle(
          fontFamily: 'elMessiri',
          fontSize: 30,
          color: blackcolor,
          fontWeight: FontWeight.bold,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.shifting,
        backgroundColor: primarycolor,
        selectedItemColor: blackcolor,
        unselectedItemColor: Colors.white,
      ),
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: primarycolor),
          color: Colors.transparent,
          elevation: 0.0,
          centerTitle: true));
  static ThemeData DarkTheme = ThemeData(
      colorScheme:  ColorScheme(
          brightness: Brightness.dark,
          primary: darkprimary,
          onPrimary: Colors.white,
          secondary: yellowocolor,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          background: yellowocolor,
          onBackground: Colors.grey,
          surface: Colors.blueGrey,
          onSurface: Colors.white),
      scaffoldBackgroundColor: Colors.transparent,
      textTheme: TextTheme(
        bodySmall: TextStyle(
          fontFamily: 'elMessiri',
          fontSize: 20,
          color: yellowocolor,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          fontFamily: 'elMessiri',
          fontSize: 25,
          color: Color(0xffFFFFFF),
          fontWeight: FontWeight.w700,
        ),
        bodyLarge: TextStyle(
          fontFamily: 'elMessiri',
          fontSize: 30,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.shifting,
        backgroundColor: darkprimary,
        selectedItemColor: yellowocolor,
        unselectedItemColor: Colors.white,
      ),
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          color: Colors.transparent,
          elevation: 0.0,
          centerTitle: true));
}
