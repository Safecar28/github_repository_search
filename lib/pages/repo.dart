import 'package:flutter/material.dart';
import 'package:github/github.dart';

//---------------------------- RepoPage ------------------------------         =

class RepoPage extends StatelessWidget {
  const RepoPage(
    this.repo,
    this.avatarImage, {
    Key? key,
  }) : super(key: key);
  final Repository repo;
  final Image avatarImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: avatarImage,
        title: Text(repo.fullName),
      ),
      body: Column(
        children: <Widget>[
          Card(
            elevation: 0.2,
            child: Row(
              children: <Widget>[
                avatarImage,
                Text(repo.description),
                Text(repo.homepage)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
