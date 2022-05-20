//Contains unnecessary (for release) functions.

import 'package:github/github.dart';

List<Repository> devFetchStaticRepos() {
  Repository rModel = Repository(
    name: 'Repository Model',
    permissions: null,
  );
  List<Repository> repos = [rModel];
  List<String> repoNames = [
    'nexneo/samay',
    'flutter/flutter',
    'tensorflow/tensorflow',
  ];
  for (var i in repoNames) {
    fetchRepositories(i).listen((r) {
      repos.add(r);
    });
  }
  return repos;
}

Stream<Repository> fetchRepositories(String query) {
  var github = GitHub();
  return SearchService(github).repositories(query).asBroadcastStream();
}
