import 'package:flutter/material.dart';
import 'package:invenira/utils/search_filter.dart';

//---------------------------- MainPage ------------------------------         =

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: const Text('Invenira'),
      ),
      body: const Center(
        child: SearchFilter(),
      ),
    );
  }
}
