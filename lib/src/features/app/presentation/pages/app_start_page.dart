// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:flutter_boilerplate/src/features/app/blocs/app_bloc.dart';
import 'package:flutter_boilerplate/src/features/app/blocs/app_event.dart';
import 'package:flutter_boilerplate/src/features/app/blocs/app_state.dart';
import 'package:flutter_boilerplate/src/features/auth/blocs/auth_bloc.dart';
import 'package:flutter_boilerplate/src/features/auth/blocs/auth_state.dart';
import 'package:flutter_boilerplate/src/services/di/injector.dart';
import 'package:flutter_boilerplate/src/services/router/router.gr.dart';

@RoutePage()
class AppStartPage extends StatefulWidget {
  const AppStartPage({super.key});

  @override
  State<AppStartPage> createState() => _AppStartPageState();
}

class _AppStartPageState extends State<AppStartPage>
    with WidgetsBindingObserver {
  final GlobalKey _key = GlobalKey();

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangePlatformBrightness() {
    // * 시스템 테마 조정
    if (getIt<AppBloc>().state.themeMode == AppThemeMode.system) {
      getIt<AppBloc>().add(AppThemeChangeEvent(themeMode: AppThemeMode.system));
    }
    super.didChangePlatformBrightness();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthBloc>(),
      child: BlocListener<AuthBloc, AuthState>(
          listener: (BuildContext context, AuthState state) {
            if (state.status == AuthStatus.authenticated) {
              context.router.replaceAll([const HomeRoute()]);
            } else {
              context.router.replaceAll([const LoginRoute()]);
            }
          },
          child: RepaintBoundary(
            key: _key,
            child: const AutoRouter(),
          )),
    );
  }
}
