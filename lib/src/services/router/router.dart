// Package imports:
import 'package:auto_route/auto_route.dart';

// Project imports:
import 'package:flutter_boilerplate/src/services/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: AppStartRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: LoginRoute.page,
        ),
        AutoRoute(
          page: HomeRoute.page,
        ),
      ];
}
