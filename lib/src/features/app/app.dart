// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Project imports:
import 'package:flutter_boilerplate/src/features/app/blocs/app_bloc.dart';
import 'package:flutter_boilerplate/src/features/app/blocs/app_event.dart';
import 'package:flutter_boilerplate/src/features/app/blocs/app_state.dart';
import 'package:flutter_boilerplate/src/router/router.dart';
import 'package:flutter_boilerplate/src/theme/app_theme.dart';

final AppRouter appRouter = AppRouter();

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

            if (state.themeMode == AppThemeMode.system.name) {
              final isDarkMode = state.isDarkMode;
              theme = isDarkMode ? appTheme.dark : appTheme.light;
            } else if (state.themeMode == AppThemeMode.light.name) {
              theme = appTheme.light;
            } else if ((state.themeMode == AppThemeMode.dark.name)) {
              theme = appTheme.dark;
            }
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              theme: theme,
              routerConfig: appRouter.config(),
            );
          },
        ),
      ),
    );
  }
}
