import 'package:flutter/foundation.dart';

class FlutterModes {
  static FlutterModeTypes get currentMode {
    if (kDebugMode) {
      return FlutterModeTypes.debug;
    } else if (kProfileMode) {
      return FlutterModeTypes.profile;
    } else if (kReleaseMode) {
      return FlutterModeTypes.release;
    } else {
      return FlutterModeTypes.unknown;
    }
  }
}

enum FlutterModeTypes {
  debug,
  profile,
  release,
  unknown,
}
