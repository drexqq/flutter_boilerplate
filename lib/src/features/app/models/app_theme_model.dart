// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:flutter_boilerplate/src/theme/app_theme.dart';

class AppThemeModel {
  final ThemeData system;
  final ThemeData dark;
  final ThemeData light;
  AppThemeModel({
    required this.system,
    required this.dark,
    required this.light,
  });

  AppThemeModel.init()
      : this(
          system: AppTheme().system,
          dark: AppTheme().dark,
          light: AppTheme().light,
        );
}
