import 'package:flavorbanner/flavorbanner.dart';
import 'package:flavors_flutter/core/flavors.dart';
import 'package:flutter/material.dart';

import 'my_app.dart';

void main() {
  FlavorConfig(
    color: Colors.red,
    flavor: Flavor.TEST,
    values: FlavorValues(
      showBanner: true,
    ),
  );
  runApp(
    const MyApp(
      environment: EnvironmentFlavors.test,
    ),
  );
}
