import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/common/constants/app_theme.dart';
import 'package:flutter_boilerplate/gen/assets.gen.dart';
import 'package:flutter_boilerplate/routing/app_router.dart';
import 'package:flutter_boilerplate/routing/app_router.gr.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends StatelessWidget {
  App({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 799),
      builder: (_, __) {
        return MaterialApp.router(
          theme: ThemeData(
            fontFamily: Assets.fonts.pretendardRegular,
            textTheme: Theme.of(context).textTheme.apply(
                  bodyColor: AppColors.black,
                  displayColor: AppColors.black,
                ),
          ),
          routerDelegate: AutoRouterDelegate(
            _appRouter,
            navigatorObservers: () => [AppRouteObserver()],
          ),
          routeInformationProvider: _appRouter.routeInfoProvider(),
          routeInformationParser: _appRouter.defaultRouteParser(),
        );
      },
    );
  }
}
