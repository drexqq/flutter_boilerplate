// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:flutter_boilerplate/src/theme/app_size_scheme.dart';
import 'package:flutter_boilerplate/src/utils/shortcuts/theme_shortcut.dart';

@lazySingleton
class AppTheme {
  AppTheme();

  ThemeData get system => getIsDarkMode ? dark : light;

  ThemeData get dark => _dark();
  ThemeData _dark() {
    _setUIOverlayStyle(true);
    return ThemeData.dark(useMaterial3: false).copyWith(
      textTheme: TextTheme(
        displayLarge: _getTextStyle(true, AppSizeScheme.text.textL),
        displayMedium: _getTextStyle(true, AppSizeScheme.text.textM),
        displaySmall: _getTextStyle(true, AppSizeScheme.text.textS),
      ),
    );
  }

  ThemeData get light => _light();
  ThemeData _light() {
    _setUIOverlayStyle(false);
    return ThemeData.light(useMaterial3: false).copyWith(
      textTheme: TextTheme(
        displayLarge: _getTextStyle(false, AppSizeScheme.text.textL),
        displayMedium: _getTextStyle(false, AppSizeScheme.text.textM),
        displaySmall: _getTextStyle(false, AppSizeScheme.text.textS),
      ),
    );
  }

  TextStyle _getTextStyle(bool isDarkMode, double size) {
    return TextStyle(
      color: isDarkMode ? Colors.white : Colors.black,
      fontSize: size,
      fontWeight: FontWeight.w400,
      height: null,
      letterSpacing: 0,
    );
  }

  void _setUIOverlayStyle(bool systemModeIsDark) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarContrastEnforced: false,
      systemStatusBarContrastEnforced: false,
      systemNavigationBarIconBrightness:
          systemModeIsDark ? Brightness.dark : Brightness.light,
      statusBarColor: Colors.transparent,
      statusBarIconBrightness:
          systemModeIsDark ? Brightness.dark : Brightness.light,
      statusBarBrightness:
          systemModeIsDark ? Brightness.dark : Brightness.light,
    ));
  }
}
