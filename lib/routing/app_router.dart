import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/app/app_init.dart';
import 'package:flutter_boilerplate/services/logs/log_service.dart';
import 'package:flutter_boilerplate/src/routers/route_auth.dart';
import 'package:flutter_boilerplate/src/routers/route_home.dart';

class AppRouteObserver extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    LogService().i("DID PUSH");
  }
}

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: AppInit, initial: true),
    signUpRoute,
    signInRoute,
    homeRoute,
  ],
)
class $AppRouter {}
