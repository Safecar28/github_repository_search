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
          padding: const EdgeInsets.all(25.0),
          children: <Widget>[
            const Text('Start Searching Below:'),
            // const TapBox(),
            Container(
              width: 200.0,
              height: 50.0,
              decoration: const BoxDecoration(
                color: Colors.grey,
                // borderRadius: BorderRadius.horizontal(
                //     left: Radius.circular(20), right: Radius.circular(20)),
              ),
              child: TextField(
                controller: TextEditingController(text: 'Search'),
                // focusNode: FocusNode(),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.blueGrey[600],
    );
  }
}
