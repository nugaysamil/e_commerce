import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project initialization
@immutable
final class ApplicationInit {
  const ApplicationInit._();
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();

    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }
}
