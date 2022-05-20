import 'package:github/github.dart';

Stream<Repository> fetchRepositories(String query) {
  var github = GitHub();
  return SearchService(github).repositories(query).asBroadcastStream();
}
