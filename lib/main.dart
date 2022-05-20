import 'package:flutter/material.dart';
import 'package:github/github.dart';

void main(List<String> args) => runApp(const MyApp());

//---------------------------- HomePage ------------------------------         =

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: IconButton(
                onPressed: () {
                  showSearch(context: context, delegate: MySearchDelegate());
                },
                icon: const Icon(Icons.search)),
          )
        ],
      ),
    );
  }
}

//----------------------------- MySearchDelegate ------------------------------=

class MySearchDelegate extends SearchDelegate {
  Future<List<Repository>> fetchSuggestions(String query) {
    var github = GitHub();
    return SearchService(github).repositories(query).toList();
  }

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
    List<String> suggestions = [];

    return ListView.builder(
        itemCount: 10,
        itemBuilder: ((context, index) {
          final suggestion = suggestions[index];
          return ListTile(
            title: Text(suggestion),
            // onTap: () {},
          );
        }));
  }
}

//----------------------------- MyApp -------------------------------          =

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Github Repository Search',
      home: HomePage(),
    );
  }
}
