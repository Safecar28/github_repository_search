import 'package:flutter/material.dart';
import 'package:github/github.dart';
import '/data/static_fetch.dart';

//----------------------------- MySearchDelegate ------------------------------=

class MySearchDelegate extends SearchDelegate {
  @override
  Widget? buildLeading(BuildContext context) => IconButton(
        onPressed: () => close(context, null),
        icon: const Icon(
          Icons.arrow_back,
        ),
      );

  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
            onPressed: () {
              if (query.isEmpty) {
                close(context, null);
              } else {
                query = '';
              }
            },
            icon: const Icon(Icons.clear)),
      ];

  @override
  Widget buildResults(BuildContext context) => Container();

  @override
  Widget buildSuggestions(BuildContext context) {
    List<Repository> suggestions = devFetchStaticRepos();

    return ListView.builder(
        // itemCount: 10,
        itemBuilder: ((context, index) {
      final suggestion = suggestions[index];
      return ListTile(
        title: Text(suggestion.name),
        // onTap: () {},
      );
    }));
  }
}
