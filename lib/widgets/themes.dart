import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.grey,
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.white,
        canvasColor: creamColor,
        buttonColor: Colors.black,
        accentColor: Colors.black,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          textTheme: Theme.of(context).textTheme,
        ),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.black,
        canvasColor: Colors.black,
        buttonColor: Colors.white,
        accentColor: Colors.white,
        
        appBarTheme: AppBarTheme(
          color: Colors.black,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
          textTheme: Theme.of(context).textTheme,
        ),
        textTheme: TextTheme(),
      );

  //Colors
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkcreamColor = Color(0xff0b0b0b);
  static Color darkBluishColor = Color(0xff00008b);
  static Color lightbluishColor = Colors.lightBlueAccent;
}
