// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:flutter_boilerplate/app/app_init.dart' as _i1;
import 'package:flutter_boilerplate/src/auth/pages/page_sign_in.dart' as _i3;
import 'package:flutter_boilerplate/src/auth/pages/page_sign_up.dart' as _i2;
import 'package:flutter_boilerplate/src/home/pages/page_home.dart' as _i4;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    AppInit.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.AppInit(),
      );
    },
    RouteSignUp.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.PageSignUp(),
      );
    },
    RouteSignIn.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.PageSignIn(),
      );
    },
    RouteHome.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i4.PageHome(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          AppInit.name,
          path: '/',
        ),
        _i5.RouteConfig(
          RouteSignUp.name,
          path: '/signup',
        ),
        _i5.RouteConfig(
          RouteSignIn.name,
          path: '/signin',
        ),
        _i5.RouteConfig(
          RouteHome.name,
          path: '/',
        ),
      ];
}

/// generated route for
/// [_i1.AppInit]
class AppInit extends _i5.PageRouteInfo<void> {
  const AppInit()
      : super(
          AppInit.name,
          path: '/',
        );

  static const String name = 'AppInit';
}

/// generated route for
/// [_i2.PageSignUp]
class RouteSignUp extends _i5.PageRouteInfo<void> {
  const RouteSignUp()
      : super(
          RouteSignUp.name,
          path: '/signup',
        );

  static const String name = 'RouteSignUp';
}

/// generated route for
/// [_i3.PageSignIn]
class RouteSignIn extends _i5.PageRouteInfo<void> {
  const RouteSignIn()
      : super(
          RouteSignIn.name,
          path: '/signin',
        );

  static const String name = 'RouteSignIn';
}

/// generated route for
/// [_i4.PageHome]
class RouteHome extends _i5.PageRouteInfo<void> {
  const RouteHome()
      : super(
          RouteHome.name,
          path: '/',
        );

  static const String name = 'RouteHome';
}
