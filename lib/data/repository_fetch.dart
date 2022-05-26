import 'package:github/github.dart';

Stream<Repository> fetchRepos(String query) {
  var github = GitHub();
  return SearchService(github).repositories(query).asBroadcastStream();
}
