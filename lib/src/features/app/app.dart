// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Project imports:
import 'package:flutter_boilerplate/src/features/app/blocs/app_bloc.dart';
import 'package:flutter_boilerplate/src/features/app/blocs/app_state.dart';
import 'package:flutter_boilerplate/src/services/di/injector.dart';
import 'package:flutter_boilerplate/src/services/router/router.dart';
import 'package:flutter_boilerplate/src/theme/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppBloc(),
      child: ScreenUtilInit(
        minTextAdapt: true,
        child: BlocBuilder<AppBloc, AppState>(
          builder: (context, state) {
            final appTheme = AppTheme();
            ThemeData? theme;

            if (state.themeMode == AppThemeMode.system) {
              final isDarkMode = state.isDarkMode;
              theme = isDarkMode ? appTheme.dark : appTheme.light;
            } else if (state.themeMode == AppThemeMode.light) {
              theme = appTheme.light;
            } else if (state.themeMode == AppThemeMode.dark) {
              theme = appTheme.dark;
            }
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              theme: theme,
              routerConfig: getIt<AppRouter>().config(),
            );
          },
        ),
      ),
    );
  }
}
