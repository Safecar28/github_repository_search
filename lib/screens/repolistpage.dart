import 'package:flutter/material.dart';
import 'package:github/github.dart';
import '/data/static_fetch.dart';

//----------------------------- Repository List Page --------------------------=

class RepoListPage extends StatelessWidget {
  RepoListPage({Key? key}) : super(key: key);
  final List<Repository> suggestions = devFetchStaticRepos();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Repositories List'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
          // itemCount: 10,
          itemBuilder: ((context, index) {
        final suggestion = suggestions[index];
        return ListTile(
          title: Text(suggestion.name),
          // onTap: () {},
        );
      })),
    );
  }
}
