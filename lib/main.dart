// Dart imports:
import 'dart:async';

// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutter_boilerplate/src/features/app/app.dart';
import 'package:flutter_boilerplate/src/services/di/injector.dart';

Future<void> main() async {
  await runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      // * DI
      await configureDependencies();

      return runApp(
        const App(),
      );
    },
    (exception, stackTrace) async {
      // * Call Sentry.captureException
    },
  );
}
