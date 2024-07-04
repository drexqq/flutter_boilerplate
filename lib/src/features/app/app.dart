// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/src/features/auth/blocs/auth_bloc.dart';
import 'package:flutter_boilerplate/src/utils/shortcuts/theme_shortcut.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Project imports:
import 'package:flutter_boilerplate/src/features/app/blocs/app_bloc.dart';
import 'package:flutter_boilerplate/src/features/app/blocs/app_state.dart';
import 'package:flutter_boilerplate/src/services/di/injector.dart';
import 'package:flutter_boilerplate/src/services/router/router.dart';

final AppRouter appRouter = getIt<AppRouter>();

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<AuthBloc>()),
        BlocProvider(create: (_) => getIt<AppBloc>()),
      ],
      child: ScreenUtilInit(
        minTextAdapt: true,
        child: BlocBuilder<AppBloc, AppState>(
          builder: (context, state) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              theme: getThemeDataFromAppState(state),
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
}
