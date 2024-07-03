// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:flutter_boilerplate/src/features/app/blocs/app_bloc.dart';
import 'package:flutter_boilerplate/src/features/app/blocs/app_event.dart';
import 'package:flutter_boilerplate/src/utils/theme_util.dart';

@RoutePage()
class AppStartPage extends StatefulWidget {
  const AppStartPage({super.key});

  @override
  State<AppStartPage> createState() => _AppStartPageState();
}

class _AppStartPageState extends State<AppStartPage>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangePlatformBrightness() {
    // * 시스템 테마 조정
    context
        .read<AppBloc>()
        .add(AppThemeChangeEvent(themeMode: AppThemeMode.system));
    super.didChangePlatformBrightness();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            context.watch<AppBloc>().state.themeMode,
            style: Theme.of(context).textTheme.displayLarge,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                  onPressed: () {
                    context.read<AppBloc>().add(
                        AppThemeChangeEvent(themeMode: AppThemeMode.system));
                  },
                  child: const Text("시스템설정")),
              ElevatedButton(
                  onPressed: () {
                    context.read<AppBloc>().add(
                        AppThemeChangeEvent(themeMode: AppThemeMode.light));
                  },
                  child: const Text("라이트")),
              ElevatedButton(
                  onPressed: () {
                    context
                        .read<AppBloc>()
                        .add(AppThemeChangeEvent(themeMode: AppThemeMode.dark));
                  },
                  child: const Text("다크")),
            ],
          ),
          Center(
            child: Column(
              children: [
                Text(
                  "App Theme : ${context.read<AppBloc>().state.themeMode}",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                Text(
                  "System Theme : ${getIsDarkMode ? "dark" : "light"}",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ],
            ),
          ),
        ],
      ),
      //   return BlocProvider(
      //     create: (context) => getIt<AuthBloc>(),
      //     child: BlocListener<AuthBloc, AuthState>(
      //       listener: (BuildContext context, AuthState state) {
      //         context.router.replaceAll([const HomeRoute()]);
      //       },
      //       child: RepaintBoundary(
      //         key: _key,
      //         child: const AutoRouter(),
      //       ),
      //     ),
      //   );
    );
  }
}
