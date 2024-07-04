// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Project imports:
import 'package:flutter_boilerplate/src/features/app/blocs/app_bloc.dart';
import 'package:flutter_boilerplate/src/features/app/blocs/app_state.dart';
import 'package:flutter_boilerplate/src/services/di/injector.dart';
import 'package:flutter_boilerplate/src/services/router/router.dart';
import 'package:flutter_boilerplate/src/theme/app_theme.dart';

final AppRouter appRouter = getIt<AppRouter>();

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AppBloc>(),
      child: ScreenUtilInit(
        minTextAdapt: true,
        child: BlocBuilder<AppBloc, AppState>(
          builder: (context, state) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              theme: _getTheme(state),
              routerDelegate: AutoRouterDelegate(
                appRouter,
                navigatorObservers: () => [
                  // * Sentry 네비게이션 이벤트 트래킹
                ],
              ),
              routeInformationParser: appRouter.defaultRouteParser(),
            );
          },
        ),
      ),
    );
  }

  ThemeData? _getTheme(AppState state) {
    final appTheme = AppTheme();
    switch (state.themeMode) {
      case AppThemeMode.dark:
        return appTheme.dark;
      case AppThemeMode.light:
        return appTheme.light;
      case AppThemeMode.system:
      default:
        return state.isDarkMode ? appTheme.dark : appTheme.light;
    }
  }
}
