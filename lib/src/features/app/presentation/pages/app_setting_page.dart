// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:flutter_boilerplate/src/features/app/blocs/app_bloc.dart';
import 'package:flutter_boilerplate/src/features/app/blocs/app_event.dart';
import 'package:flutter_boilerplate/src/features/app/blocs/app_state.dart';
import 'package:flutter_boilerplate/src/utils/shortcuts/theme_shortcut.dart';

@RoutePage()
class AppSettingPage extends StatelessWidget {
  const AppSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            context.watch<AppBloc>().state.themeMode.name,
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
    );
  }
}
