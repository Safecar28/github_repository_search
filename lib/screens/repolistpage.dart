// import 'package:flutter/material.dart';
// // import 'package:github/github.dart';
// import '/data/static_fetch.dart';

// //----------------------------- Repository List Page --------------------------=

// class RepoListPage extends StatelessWidget {
//   const RepoListPage({Key? key}) : super(key: key);
//   // final List<Repository> results = devFetchStaticRepos();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Repositories List'),
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//       body: ListView.builder(
//           itemCount: results.length,
//           itemBuilder: ((context, index) {
//             final result = results[index];
//             return Card(
//                 clipBehavior: Clip.antiAlias,
//                 child: ListTile(
//                     trailing: Container(
//                       width: 100.0,
//                       height: 100.0,
//                       decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           image: DecorationImage(
//                               image: NetworkImage(
//                                   // 'https://avatars.githubusercontent.com/u/14101776'
//                                   result.owner?.avatarUrl == null
//                                       ? 'https://avatars.githubusercontent.com/u/14101776'
//                                       : result.owner!.avatarUrl))),
//                     ),
//                     title: Text(result.fullName),
//                     subtitle: Text(result.language),
//                     onTap: () {
//                       Navigator.push(context,
//                           MaterialPageRoute(builder: (context) {
//                         return Scaffold(
//                           appBar: AppBar(
//                             leading: IconButton(
//                               onPressed: () => Navigator.pop(context),
//                               icon: const Icon(Icons.arrow_back),
//                             ),
//                             title: Text(result.name),
//                           ),
//                           body: ListView(
//                             padding: const EdgeInsets.all(16.0),
//                             children: <Widget>[
//                               ListTile(
//                                 leading: const Icon(Icons.label),
//                                 title: Text('Name: ${result.name}'),
//                                 // trailing: Text('Full Name: ${result.fullName}'),
//                               ),
//                               // ListTile(
//                               //     leading: const Icon(Icons.settings),
//                               //     title: Text(
//                               //       'Admin: ${suggestion.permissions!.admin}',
//                               //     )),
//                               ListTile(
//                                   leading: const Icon(Icons.text_fields),
//                                   title: Text(
//                                     'Repository Description: ${result.description}',
//                                   )),
//                             ],
//                           ),
//                         );
//                       }));
//                     }));
//           })),
//     );
//   }
// }
