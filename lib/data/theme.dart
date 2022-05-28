import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData myTheme = ThemeData(
  // Default brightness and primary color
  brightness: Brightness.dark,
  primaryColor: Colors.blue,

  // Common AppBar theme
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.black,
    foregroundColor: Colors.amber,
    titleTextStyle: GoogleFonts.ubuntu(),
    centerTitle: true,
  ),

  //Common textTheme
  textTheme: TextTheme(
    headline1:
        GoogleFonts.comfortaa(fontSize: 72.0, fontWeight: FontWeight.bold),
    bodyText1: GoogleFonts.ubuntu(fontSize: 14.0),
  ),
);
