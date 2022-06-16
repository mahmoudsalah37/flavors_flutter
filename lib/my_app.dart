import 'package:flavorbanner/flavorbanner.dart';
import 'package:flavors_flutter/core/flavors.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  final EnvironmentFlavors environment;
  const MyApp({Key? key, required this.environment}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FlavorBanner(
        child: Scaffold(
          body: Container(),
        ),
      ),
    );
  }
}
