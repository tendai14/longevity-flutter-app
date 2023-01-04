import 'package:flutter/material.dart';
import 'package:longevity/app_blocs.dart';
import 'package:longevity/app_repositories.dart';
import 'package:longevity/ui/main_page.dart';

Future<void> main() async {
  var config = const AppRepositories(appBlocs: AppBlocs(app: LongevityApp()));
  runApp(config);
}

class LongevityApp extends StatefulWidget {
  const LongevityApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return LongevityAppState();
  }
}

class LongevityAppState extends State<LongevityApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Longevity App',
      home: LandingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
