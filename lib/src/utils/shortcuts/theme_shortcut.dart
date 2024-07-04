// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

// Project imports:
import 'package:flutter_boilerplate/src/features/app/blocs/app_state.dart';
import 'package:flutter_boilerplate/src/theme/app_theme.dart';

bool get getIsDarkMode =>
    SchedulerBinding.instance.platformDispatcher.platformBrightness ==
    Brightness.dark;

AppThemeMode getThemeModeFromString(String mode) {
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

ThemeData? getThemeDataFromAppState(AppState state) {
  final appTheme = AppTheme();
  switch (state.themeMode) {
    case AppThemeMode.dark:
      return appTheme.dark;
    case AppThemeMode.light:
      return appTheme.light;
    case AppThemeMode.system:
    default:
      return state.isDarkMode ? appTheme.dark : appTheme.light;
  }
}
