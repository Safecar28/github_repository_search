import 'package:flutter/material.dart';
import 'package:github/github.dart';
import '/data/static_fetch.dart';

//----------------------------- Cards -----------------------------            =

class Cards extends StatelessWidget {
  Cards({Key? key}) : super(key: key);
  final List<Repository> suggestions = devFetchStaticRepos();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: ((context, index) {
      final suggestion = suggestions[index];
      return Card(
        clipBehavior: Clip.antiAlias,
        child: ListTile(
          trailing: Container(
            width: 100.0,
            height: 100.0,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(
                        'https://avatars.githubusercontent.com/u/14101776'
                        //suggestion.owner!.avatarUrl
                        ))),
          ),
          title: Text(suggestion.fullName),
          subtitle: Text('Language Used: ${suggestion.language}'),
        ),
      );
    }));
  }
}
