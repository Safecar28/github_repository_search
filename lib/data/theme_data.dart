import 'package:flutter/material.dart';

ThemeData mainTheme = ThemeData(
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: Colors.white,
    onPrimary: Colors.black,
    secondary: Color.fromARGB(255, 186, 104, 200),
    onSecondary: Colors.blueGrey,
    error: Colors.red,
    onError: Color.fromARGB(255, 255, 0, 0),
    background: Colors.grey,
    onBackground: Colors.amber,
    surface: Colors.pink,
    onSurface: Colors.deepPurple,
  ),
);
