// Package imports:
import 'package:equatable/equatable.dart';

// Project imports:
import 'package:flutter_boilerplate/src/services/database/shared_prefs_service.dart';
import 'package:flutter_boilerplate/src/services/di/injector.dart';
import 'package:flutter_boilerplate/src/utils/constants.dart';
import 'package:flutter_boilerplate/src/utils/shortcuts/theme_shortcut.dart';

enum AppThemeMode {
  system,
  light,
  dark,
}

class AppState extends Equatable {
  final AppThemeMode themeMode;
  final bool isDarkMode;
  const AppState({
    required this.themeMode,
    required this.isDarkMode,
  });

  AppState.init()
      : this(
          themeMode: getThemeModeFromString(
              getIt<SharedPrefsService>().getString(Constants.themeMode) ??
                  AppThemeMode.system.name),
          isDarkMode: getIsDarkMode,
        );

  @override
  List<Object?> get props => [isDarkMode, themeMode];

  AppState copyWith({
    AppThemeMode? themeMode,
    bool? isDarkMode,
  }) {
    return AppState(
      themeMode: themeMode ?? this.themeMode,
      isDarkMode: isDarkMode ?? this.isDarkMode,
    );
  }
}
