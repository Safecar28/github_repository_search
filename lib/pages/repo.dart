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
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
        ),
        title: Text(repo.fullName),
      ),
      body: Column(
        children: <Widget>[
          Card(
            elevation: 4.0,
            child: Row(
              children: <Widget>[
                SizedBox(height: 128, width: 128, child: avatarImage),
                Flexible(
                    child: Text(
                  repo.description,
                  overflow: TextOverflow.ellipsis,
                )),
              ],
            ),
          ),
          Card(child: Text('Owner: ${repo.owner!.login}')),
          Card(child: Text('Created at: ${repo.createdAt.toString()}')),
        ],
      ),
    );
  }
}
