// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

// Project imports:
import 'package:flutter_boilerplate/src/features/app/blocs/app_state.dart';
import 'package:flutter_boilerplate/src/services/di/injector.dart';
import 'package:flutter_boilerplate/src/theme/app_theme.dart';

bool get getIsDarkMode =>
    SchedulerBinding.instance.platformDispatcher.platformBrightness ==
    Brightness.dark;

AppThemeMode getThemeMode(String mode) {
  switch (mode) {
    case 'light':
      return AppThemeMode.light;
    case 'dark':
      return AppThemeMode.dark;
    case 'system':
    default:
      return AppThemeMode.system;
  }
}

ThemeData getThemeData(AppThemeMode mode, {bool? isStateDark}) {
  switch (mode) {
    case AppThemeMode.light:
      return getIt<AppTheme>().light;
    case AppThemeMode.dark:
      return getIt<AppTheme>().dark;
    case AppThemeMode.system:
    default:
      return getIt<AppTheme>().system;
  }
}
