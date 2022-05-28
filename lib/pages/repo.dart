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
        title: Text(repo.fullName),
        leading: avatarImage,
      ),
      // body: Column(
      //   children: const <Widget>[],
      // ),
    );
  }
}
