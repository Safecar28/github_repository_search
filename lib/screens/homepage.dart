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
        title: const Text('Welcome to GitHub Repository Search!'),
        backgroundColor: Colors.grey[700],
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(24.0),
          children: const <Widget>[
            TapBox(),
            Card(
                child: Text('About',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ))),
          ],
        ),
      ),
      backgroundColor: Colors.blueGrey[600],
    );
  }
}
