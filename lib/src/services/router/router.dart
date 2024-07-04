// Package imports:
import 'package:auto_route/auto_route.dart';

// Project imports:
import 'package:flutter_boilerplate/src/services/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: AppStartRoute.page,
          initial: true,
          children: [
            AutoRoute(path: 'login', page: LoginRoute.page),
            AutoRoute(path: 'home', page: HomeRoute.page),
          ],
        ),
        AutoRoute(page: AppSettingRoute.page)
      ];
}
