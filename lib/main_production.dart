import 'package:flavors_flutter/configrations/configration.dart';
import 'package:flavors_flutter/core/flavors.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'configrations/production_configration.dart';
import 'my_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final packageInfo = await PackageInfo.fromPlatform();
  final configration = ProductionConfigration();
  Configration.api = configration.api;
  print(Configration.api);

  runApp(MyApp(
    environment: EnvironmentFlavors.production,
    version: packageInfo.version,
  ));
}
