//Contains unnecessary (for release) functions.

import 'package:github/github.dart';

// final List<Repository> results = devFetchStaticRepos();

List<Repository> devFetchStaticRepos() {
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
  List<Repository> repos = [rModel];
  List<String> repoNames = [
    // 'nexneo/samay',
    'flutter/flutter',
    'tensorflow/tensorflow',
  ];
  for (var i in repoNames) {
    fetchRepositories(i).listen((r) {
      // print(r);
      repos.add(r);
    });
  }
  // fetchRepositories('nexneo/samay').listen((repo) {
  //   // print(repo);
  //   repos.add(repo);
  // });

  return repos;
}

Stream<Repository> fetchRepositories(String query) {
  var github = GitHub();
  return SearchService(github).repositories(query).asBroadcastStream();
}
