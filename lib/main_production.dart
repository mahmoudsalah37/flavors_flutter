import 'package:flavorbanner/flavorbanner.dart';
import 'package:flavors_flutter/core/flavors.dart';
import 'package:flutter/material.dart';

import 'my_app.dart';

void main() {
  FlavorConfig(
    flavor: Flavor.PROD,
    color: Colors.red,
    values: FlavorValues(
      showBanner: true,
    ),
  );
  runApp(const MyApp(
    environment: EnvironmentFlavors.production,
  ));
}
