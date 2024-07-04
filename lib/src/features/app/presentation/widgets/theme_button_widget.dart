import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/src/features/app/blocs/app_bloc.dart';
import 'package:flutter_boilerplate/src/features/app/blocs/app_event.dart';
import 'package:flutter_boilerplate/src/features/app/blocs/app_state.dart';
import 'package:flutter_boilerplate/src/services/di/injector.dart';
import 'package:flutter_boilerplate/src/theme/app_color_scheme.dart';
import 'package:flutter_boilerplate/src/theme/app_size_scheme.dart';

class ThemeButtonWidget extends StatelessWidget {
  final AppThemeMode mode;
  const ThemeButtonWidget({
    super.key,
    required this.mode,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(builder: (context, state) {
      final isCurrentMode = state.themeMode == mode;
      return GestureDetector(
        onTap: () {
          getIt<AppBloc>().add(AppThemeChangeEvent(themeMode: mode));
        },
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(AppSizeScheme.insets.insetL),
          decoration: BoxDecoration(
            color: _selectedColor(isCurrentMode, state.isDarkMode),
          ),
          child: Text(_modeText(mode)),
        ),
      );
    });
  }

  String _modeText(AppThemeMode mode) {
    switch (mode) {
      case AppThemeMode.light:
        return "라이트 모드";
      case AppThemeMode.dark:
        return "다크 모드";
      case AppThemeMode.system:
        return "시스템 설정 모드";
    }
  }

  Color? _selectedColor(bool isCurrentMode, bool isDarkMode) {
    Color selectedColor = isDarkMode
        ? AppColorScheme.white.withOpacity(.2)
        : AppColorScheme.black.withOpacity(.2);
    return isCurrentMode ? selectedColor : null;
  }
}
