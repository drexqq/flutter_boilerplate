// Package imports:
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:flutter_boilerplate/src/features/app/blocs/app_event.dart';
import 'package:flutter_boilerplate/src/features/app/blocs/app_state.dart';
import 'package:flutter_boilerplate/src/services/database/shared_prefs_service.dart';
import 'package:flutter_boilerplate/src/services/di/injector.dart';
import 'package:flutter_boilerplate/src/utils/constants.dart';
import 'package:flutter_boilerplate/src/utils/shortcuts/theme_shortcut.dart';

@lazySingleton
class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppState.init()) {
    on<AppThemeChangeEvent>((event, emit) async {
      final themeMode = event.themeMode;
      await getIt<SharedPrefsService>()
          .saveString(Constants.themeMode, themeMode.name);

      if (themeMode == AppThemeMode.system) {
        emit(state.copyWith(isDarkMode: getIsDarkMode, themeMode: themeMode));
      } else {
        final isDarkMode = themeMode == AppThemeMode.dark;
        emit(state.copyWith(isDarkMode: isDarkMode, themeMode: themeMode));
      }
    });
  }

  @override
  void onTransition(Transition<AppEvent, AppState> transition) {
    super.onTransition(transition);
  }
}
