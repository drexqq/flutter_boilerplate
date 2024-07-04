// Flutter imports:
// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/src/features/app/blocs/app_state.dart';
import 'package:flutter_boilerplate/src/features/app/presentation/widgets/theme_button_widget.dart';

@RoutePage()
class AppSettingPage extends StatelessWidget {
  const AppSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              ThemeButtonWidget(mode: AppThemeMode.system),
              ThemeButtonWidget(mode: AppThemeMode.light),
              ThemeButtonWidget(mode: AppThemeMode.dark),
            ],
          ),
        ],
      ),
    );
  }
}
