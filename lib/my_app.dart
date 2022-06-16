import 'package:flavorbanner/flavorbanner.dart';
import 'package:flavors_flutter/core/flavors.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  final EnvironmentFlavors environment;
  final String version;
  const MyApp({Key? key, required this.environment, required this.version})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FlavorBanner(
        child: Scaffold(
          appBar: AppBar(title: Text(version)),
          body: Container(),
        ),
      ),
    );
  }
}
