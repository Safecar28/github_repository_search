import 'package:invenira/data/theme.dart';
import '/imports.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Invenira',
      theme: myTheme,
      home: const MainPage(),
    );
  }
}
