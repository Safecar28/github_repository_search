import 'package:flutter/material.dart';
import '/screens/repolistpage.dart';

//----------------------------- TapBox -----------------------------           =

class TapBox extends StatefulWidget {
  const TapBox({Key? key}) : super(key: key);

  @override
  State<TapBox> createState() => _TapBoxState();
}

class _TapBoxState extends State<TapBox> {
  void _nav() => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => RepoListPage()),
      );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _nav,
      child: Container(
        width: 200.0,
        height: 200.0,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.grey,
        ),
        child: const Icon(Icons.search),
      ),
    );
  }
}
