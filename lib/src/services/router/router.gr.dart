// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

// Package imports:
import 'package:auto_route/auto_route.dart' as _i5;

import 'package:flutter_boilerplate/src/features/app/presentation/pages/app_setting_page.dart'
    as _i1;
import 'package:flutter_boilerplate/src/features/app/presentation/pages/app_start_page.dart'
    as _i2;
import 'package:flutter_boilerplate/src/features/auth/presentation/pages/login_page.dart'
    as _i4;
import 'package:flutter_boilerplate/src/features/home/presentation/pages/home_page.dart'
    as _i3;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    AppSettingRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AppSettingPage(),
      );
    },
    AppStartRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AppStartPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.LoginPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AppSettingPage]
class AppSettingRoute extends _i5.PageRouteInfo<void> {
  const AppSettingRoute({List<_i5.PageRouteInfo>? children})
      : super(
          AppSettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppSettingRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AppStartPage]
class AppStartRoute extends _i5.PageRouteInfo<void> {
  const AppStartRoute({List<_i5.PageRouteInfo>? children})
      : super(
          AppStartRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppStartRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LoginPage]
class LoginRoute extends _i5.PageRouteInfo<void> {
  const LoginRoute({List<_i5.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
