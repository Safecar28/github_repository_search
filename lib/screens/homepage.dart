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
        title: const Text('HomePage'),
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.symmetric(vertical: 8.0),
        //     child: IconButton(
        //         onPressed: () {
        //           // showSearch(context: context, delegate: MySearchDelegate());
        //         },
        //         icon: const Icon(Icons.search)),
        //   )
        // ],
      ),
      body: const Center(
        child: TapBox(),
      ),
    );
  }
}
