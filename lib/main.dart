import 'package:barg_challenge/app.dart';
import 'package:barg_challenge/injector.dart';
import 'package:barg_challenge/src/core/constant/constant.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  await startupSetup();
  runApp(const App());
}

/// Configuration before starting the flutter engine
Future<void> startupSetup() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Configure dependency injections
  await initializeDependencies();

  /// If the OS is `not web`
  if (!kIsWeb) {
    /// Open app only in `portrait` mode
    await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp],
    );

    /// Sets device `status bar` and `navigation bar` color
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarIconBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarColor: kPaletteColors[3],
      ),
    );
  }
}
