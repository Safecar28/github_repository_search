import 'package:github/github.dart';

List<Repository> fakeRepoGen() {
  List<Repository> fakeRepos = [];
  for (var i = 0; i < 10; i++) {
    fakeRepos.add(
      Repository(
        name: 'repo$i',
        fullName: 'fake/repo$i',
        owner: UserInformation(
            'user$i',
            i,
            'https://avatars.githubusercontent.com/u/14101776',
            'https://github.com/'),
      ),
    );
    print(fakeRepos);
  }
  return fakeRepos;
}
