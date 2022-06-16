import 'package:flavorbanner/flavorbanner.dart';
import 'package:flavors_flutter/core/flavors.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'my_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final packageInfo = await PackageInfo.fromPlatform();
  FlavorConfig(
    color: Colors.red,
    flavor: Flavor.DEV,
    values: FlavorValues(
      showBanner: true,
    ),
  );
  runApp(
    MyApp(
      environment: EnvironmentFlavors.development,
      version: packageInfo.version,
    ),
  );
}
