import 'package:flavors_flutter/core/flavors.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'my_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final packageInfo = await PackageInfo.fromPlatform();

  runApp(MyApp(
    environment: EnvironmentFlavors.production,
    version: packageInfo.version,
  ));
}
