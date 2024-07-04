// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:flutter_boilerplate/src/theme/app_color_scheme.dart';
import 'package:flutter_boilerplate/src/theme/app_text_theme.dart';
import 'package:flutter_boilerplate/src/utils/shortcuts/theme_shortcut.dart';

@lazySingleton
class AppTheme {
  AppTheme();

  // * ThemeData
  ThemeData get system => getIsDarkMode ? dark : light;

  ThemeData get dark => _dark();
  ThemeData _dark() {
    const isDarkMode = true;
    _setUIOverlayStyle(isDarkMode);
    return ThemeData.dark(useMaterial3: false).copyWith(
      appBarTheme: _getAppBarTheme(isDarkMode),
      textTheme: AppTextTheme.dark,
      iconTheme: _getIconThemeData(isDarkMode),
      scaffoldBackgroundColor: AppColorScheme.darkModeBackgroundColor,
    );
  }

  ThemeData get light => _light();
  ThemeData _light() {
    const isDarkMode = false;
    _setUIOverlayStyle(isDarkMode);
    return ThemeData.light(useMaterial3: false).copyWith(
      appBarTheme: _getAppBarTheme(isDarkMode),
      textTheme: AppTextTheme.light,
      iconTheme: _getIconThemeData(isDarkMode),
      scaffoldBackgroundColor: AppColorScheme.lightModeBackgroundColor,
    );
  }

  // * AppBarTheme
  AppBarTheme _getAppBarTheme(bool isDarkMode) {
    return AppBarTheme(
      elevation: 0,
      systemOverlayStyle: _getOverlayStyle(isDarkMode),
      iconTheme: _getIconThemeData(isDarkMode),
      backgroundColor: isDarkMode
          ? AppColorScheme.darkModeBackgroundColor
          : AppColorScheme.lightModeBackgroundColor,
    );
  }

  // * IconThemeData
  IconThemeData _getIconThemeData(bool isDarkMode) {
    return IconThemeData(
      color: isDarkMode ? AppColorScheme.white : AppColorScheme.black,
    );
  }

  // * SystemOverlayStyle
  SystemUiOverlayStyle _getOverlayStyle(bool isDarkMode) {
    return SystemUiOverlayStyle(
      systemNavigationBarColor:
          isDarkMode ? AppColorScheme.black : AppColorScheme.white,
      systemNavigationBarContrastEnforced: false,
      systemStatusBarContrastEnforced: false,
      systemNavigationBarIconBrightness:
          isDarkMode ? Brightness.dark : Brightness.light,
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: isDarkMode ? Brightness.dark : Brightness.light,
      statusBarBrightness: isDarkMode ? Brightness.dark : Brightness.light,
    );
  }

  void _setUIOverlayStyle(bool isDarkMode) =>
      SystemChrome.setSystemUIOverlayStyle(_getOverlayStyle(isDarkMode));

  // *
}
