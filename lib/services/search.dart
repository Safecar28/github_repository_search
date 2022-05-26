import 'package:flutter/material.dart';
import 'package:github/github.dart';
// import 'package:github_repository_search/data/repository_fetch.dart';
import '/data/repository_fetch.dart';
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
  Widget buildResults(BuildContext context) {
    Repository rModel = Repository(
      name: 'rmodel',
      fullName: 'flutter/rmodel',
      permissions: RepositoryPermissions(admin: true, push: true, pull: true),
      description: 'A fake repository created for testing this project.',
      language: 'Rust',
      isPrivate: false,
      isFork: false,
      license: LicenseKind(
        name: 'Fake License',
      ),
    );
    List<Repository>? qresults;
    // qresults?.add(rModel);
    // fetchRepos(query).listen((r) {
    //   qresults!.add(r);
    // });

    return ListView.builder(itemBuilder: (((context, index) {
      qresults?.add(rModel);
      fetchRepos(query).listen((r) {
        qresults!.add(r);
      });
      final qresult = qresults![index];

      return Card(
          clipBehavior: Clip.antiAlias,
          child: ListTile(
              trailing: Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                            // 'https://avatars.githubusercontent.com/u/14101776'
                            qresult.owner?.avatarUrl == null
                                ? 'https://avatars.githubusercontent.com/u/14101776'
                                : qresult.owner!.avatarUrl))),
              ),
              title: Text(qresult.fullName),
              subtitle: Text(qresult.language),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Scaffold(
                    appBar: AppBar(
                      leading: IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.arrow_back),
                      ),
                      title: Text(qresult.name),
                    ),
                    body: ListView(
                      padding: const EdgeInsets.all(16.0),
                      children: <Widget>[
                        ListTile(
                          leading: const Icon(Icons.label),
                          title: Text('Name: ${qresult.name}'),
                          // trailing: Text('Full Name: ${result.fullName}'),
                        ),
                        // ListTile(
                        //     leading: const Icon(Icons.settings),
                        //     title: Text(
                        //       'Admin: ${suggestion.permissions!.admin}',
                        //     )),
                        ListTile(
                            leading: const Icon(Icons.text_fields),
                            title: Text(
                              'Repository Description: ${qresult.description}',
                            )),
                      ],
                    ),
                  );
                }));
              }));
    })));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<Repository> suggestions = devFetchStaticRepos();

    return ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: ((context, index) {
          final suggestion = suggestions[index];
          return ListTile(
            title: Text(suggestion.name),
            onTap: () {},
          );
        }));
  }
}
