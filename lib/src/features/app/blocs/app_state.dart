// Package imports:
import 'package:equatable/equatable.dart';

// Project imports:
import 'package:flutter_boilerplate/src/services/database/shared_prefs_service.dart';
import 'package:flutter_boilerplate/src/services/di/injector.dart';
import 'package:flutter_boilerplate/src/utils/theme_util.dart';

class AppState extends Equatable {
  final String themeMode;
  final bool isDarkMode;
  const AppState({
    required this.themeMode,
    required this.isDarkMode,
  });

  AppState.init()
      : this(
          themeMode:
              getIt<SharedPrefsService>().getString("themeMode") ?? "system",
          isDarkMode: getIsDarkMode,
        );

  @override
  List<Object?> get props => [isDarkMode, themeMode];

  AppState copyWith({
    String? themeMode,
    bool? isDarkMode,
  }) {
    return AppState(
      themeMode: themeMode ?? this.themeMode,
      isDarkMode: isDarkMode ?? this.isDarkMode,
    );
  }
}
