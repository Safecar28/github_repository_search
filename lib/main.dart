import 'package:flutter/material.dart';
import '/screens/homepage.dart';
// import '/screens/repolistpage.dart';
// import '/data/static_fetch.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

//----------------------------- MyApp -------------------------------          =

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Github Repository Search',
      home: HomePage(),
      // debugShowCheckedModeBanner: false,
    );
  }
}
