import 'package:flutter/material.dart';

class AppTheme {
  
  static const Color lightPrimary = Colors.green;
  static const Color darkPrimary = Colors.orange;
  
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    
    primaryColor: lightPrimary,
    
    appBarTheme: const AppBarTheme(
      color: lightPrimary,
      elevation: 0
    ),

    iconTheme: const IconThemeData(
      color: lightPrimary
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: lightPrimary
      )
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: lightPrimary,
      elevation: 5
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: lightPrimary,
        shape: const StadiumBorder(),
        elevation: 0
      )
    ),

    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: lightPrimary),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: lightPrimary),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topRight: Radius.circular(10))
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: lightPrimary),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topRight: Radius.circular(10))
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topRight: Radius.circular(10))
      )
    )

  );

    static final ThemeData darkTheme = ThemeData.dark().copyWith(
    
    primaryColor: darkPrimary,
    
    appBarTheme: const AppBarTheme(
      color: darkPrimary,
      elevation: 0
    ),

    iconTheme: const IconThemeData(
      color: darkPrimary
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: darkPrimary
      )
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: darkPrimary,
      elevation: 5
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: darkPrimary,
        shape: const StadiumBorder(),
        elevation: 0
      )
    )

    ,

    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: darkPrimary),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: darkPrimary),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topRight: Radius.circular(10))
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: darkPrimary),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topRight: Radius.circular(10))
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topRight: Radius.circular(10))
      )
    )
  );

}