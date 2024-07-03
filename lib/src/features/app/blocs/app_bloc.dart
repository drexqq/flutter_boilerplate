// Package imports:
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';

// Project imports:
import 'package:flutter_boilerplate/src/features/app/blocs/app_event.dart';
import 'package:flutter_boilerplate/src/features/app/blocs/app_state.dart';
import 'package:flutter_boilerplate/src/services/database/shared_prefs_service.dart';
import 'package:flutter_boilerplate/src/services/di/injector.dart';
import 'package:flutter_boilerplate/src/utils/theme_util.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppState.init()) {
    on<AppThemeChangeEvent>((event, emit) async {
      final themeMode = event.themeMode;
      if (themeMode.name == state.themeMode) return;

      await getIt<SharedPrefsService>().saveString("themeMode", themeMode.name);

      if (themeMode == AppThemeMode.system) {
        emit(state.copyWith(
            isDarkMode: getIsDarkMode, themeMode: themeMode.name));
      } else {
        final isDarkMode = themeMode == AppThemeMode.dark;
        emit(state.copyWith(isDarkMode: isDarkMode, themeMode: themeMode.name));
      }
    }, transformer: droppable());
  }

  @override
  void onTransition(Transition<AppEvent, AppState> transition) {
    super.onTransition(transition);
  }
}
