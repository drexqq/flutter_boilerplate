import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/app/app.dart';
import 'package:flutter_boilerplate/services/logs/provider_log_service.dart';
import 'package:flutter_boilerplate/services/providers/provider_platform.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'gen/assets.gen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: Assets.env.envDev);

  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  final platformType = detectPlatformType();

  runApp(
    ProviderScope(
      observers: [
        ProvidersLogger(),
      ],
      overrides: [
        platformTypeProvider.overrideWithValue(platformType),
      ],
      child: App(),
    ),
  );
}
