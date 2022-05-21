import 'package:flutter/material.dart';
import '/widgets/tapbox.dart';
// import '/services/search.dart';

//---------------------------- HomePage ------------------------------         =

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.grey[700],
      ),
      body: const Center(
        child: TapBox(),
      ),
      backgroundColor: Colors.blueGrey[600],
    );
  }
}
