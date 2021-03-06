//Libraries
// import 'dart:async';
//Packagaes
import 'package:flutter/material.dart';
import 'package:github/github.dart';
import 'package:invenira/auth_token.dart';
import 'package:invenira/data/fake_repositories.dart';
import 'package:invenira/widgets/search_widget.dart';
import 'package:invenira/pages/repo.dart';

//---------------------------- SearchFilter -----------------------------      =

class SearchFilter extends StatefulWidget {
  const SearchFilter({Key? key}) : super(key: key);

  @override
  State<SearchFilter> createState() => _SearchFilterState();
}

class _SearchFilterState extends State<SearchFilter> {
  List<Repository> repos = fakeRepoGen();
  String query = '';

  void search(String query) async {
    GitHub github = GitHub(
      auth: Authentication.withToken(authToken),
    );

    List<Repository> retrievals =
        await SearchService(github).repositories(query).toList();

    setState(() {
      repos = retrievals;
    });
  }

  Widget buildSearch() => SearchWidget(
        text: query,
        onChanged: search,
        hintText: 'Search Repositories on GitHub',
      );

  Widget buildRepoDisplay(Repository repo) {
    final avatarImage = repo.owner?.avatarUrl == null
        ? Image.asset('account_circle.png')
        : Image.network(repo.owner!.avatarUrl);

    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: ((context) => RepoPage(repo, avatarImage)))),
      child: Card(
        elevation: 2.0,
        child: ListTile(
          title: Text(repo.fullName),
          subtitle: Text(repo.language),
          trailing: avatarImage,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        buildSearch(),
        Expanded(
          child: ListView.builder(
              itemCount: repos.length,
              itemBuilder: (context, index) {
                final repo = repos[index];

                return buildRepoDisplay(repo);
              }),
        ),
      ],
    );
  }
}
