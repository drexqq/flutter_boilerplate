// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
import 'package:flutter_boilerplate/src/utils/theme_util.dart';

const double textLarge = 40;
const double textMedium = 24;
const double textSmall = 12;

class AppTheme {
  AppTheme();

  ThemeData get system => getIsDarkMode ? dark : light;

  ThemeData get dark => _dark();
  ThemeData _dark() {
    _setUIOverlayStyle(true);
    return ThemeData.dark(useMaterial3: false).copyWith(
      textTheme: TextTheme(
        displayLarge: _getTextStyle(true, textLarge),
        displayMedium: _getTextStyle(true, textMedium),
        displaySmall: _getTextStyle(true, textSmall),
      ),
    );
  }

  ThemeData get light => _light();
  ThemeData _light() {
    _setUIOverlayStyle(false);
    return ThemeData.light(useMaterial3: false).copyWith(
      textTheme: TextTheme(
        displayLarge: _getTextStyle(false, textLarge),
        displayMedium: _getTextStyle(false, textMedium),
        displaySmall: _getTextStyle(false, textSmall),
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
