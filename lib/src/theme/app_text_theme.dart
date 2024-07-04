// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:flutter_boilerplate/src/theme/app_size_scheme.dart';

@immutable
@lazySingleton
class AppTextTheme {
  static final textStyleScheme = _AppTextStyleScheme();

  static TextTheme get dark => TextTheme(
        displayLarge:
            textStyleScheme.dark.copyWith(fontSize: AppSizeScheme.text.textL),
        displayMedium:
            textStyleScheme.dark.copyWith(fontSize: AppSizeScheme.text.textM),
        displaySmall:
            textStyleScheme.dark.copyWith(fontSize: AppSizeScheme.text.textS),
        headlineLarge:
            textStyleScheme.dark.copyWith(fontSize: AppSizeScheme.text.textXxl),
        headlineMedium:
            textStyleScheme.dark.copyWith(fontSize: AppSizeScheme.text.textXl),
        headlineSmall:
            textStyleScheme.dark.copyWith(fontSize: AppSizeScheme.text.textL),
        titleLarge:
            textStyleScheme.dark.copyWith(fontSize: AppSizeScheme.text.textL),
        titleMedium:
            textStyleScheme.dark.copyWith(fontSize: AppSizeScheme.text.textSm),
        titleSmall:
            textStyleScheme.dark.copyWith(fontSize: AppSizeScheme.text.textM),
        bodyLarge:
            textStyleScheme.dark.copyWith(fontSize: AppSizeScheme.text.textL),
        bodyMedium:
            textStyleScheme.dark.copyWith(fontSize: AppSizeScheme.text.textM),
        bodySmall:
            textStyleScheme.dark.copyWith(fontSize: AppSizeScheme.text.textS),
        labelLarge:
            textStyleScheme.dark.copyWith(fontSize: AppSizeScheme.text.textS),
        labelMedium:
            textStyleScheme.dark.copyWith(fontSize: AppSizeScheme.text.textXs),
        labelSmall:
            textStyleScheme.dark.copyWith(fontSize: AppSizeScheme.text.textXxs),
      );
  static TextTheme get light => TextTheme(
        displayLarge:
            textStyleScheme.light.copyWith(fontSize: AppSizeScheme.text.textL),
        displayMedium:
            textStyleScheme.light.copyWith(fontSize: AppSizeScheme.text.textM),
        displaySmall:
            textStyleScheme.light.copyWith(fontSize: AppSizeScheme.text.textS),
        headlineLarge: textStyleScheme.light
            .copyWith(fontSize: AppSizeScheme.text.textXxl),
        headlineMedium:
            textStyleScheme.light.copyWith(fontSize: AppSizeScheme.text.textXl),
        headlineSmall:
            textStyleScheme.light.copyWith(fontSize: AppSizeScheme.text.textL),
        titleLarge:
            textStyleScheme.light.copyWith(fontSize: AppSizeScheme.text.textL),
        titleMedium:
            textStyleScheme.light.copyWith(fontSize: AppSizeScheme.text.textSm),
        titleSmall:
            textStyleScheme.light.copyWith(fontSize: AppSizeScheme.text.textM),
        bodyLarge:
            textStyleScheme.light.copyWith(fontSize: AppSizeScheme.text.textL),
        bodyMedium:
            textStyleScheme.light.copyWith(fontSize: AppSizeScheme.text.textM),
        bodySmall:
            textStyleScheme.light.copyWith(fontSize: AppSizeScheme.text.textS),
        labelLarge:
            textStyleScheme.light.copyWith(fontSize: AppSizeScheme.text.textS),
        labelMedium:
            textStyleScheme.light.copyWith(fontSize: AppSizeScheme.text.textXs),
        labelSmall: textStyleScheme.light
            .copyWith(fontSize: AppSizeScheme.text.textXxs),
      );
}

@immutable
class _AppTextStyleScheme {
  TextStyle get _base => const TextStyle(
        fontWeight: FontWeight.w400,
        height: null,
        letterSpacing: 0,
      );

  TextStyle get dark => _base.copyWith(
        color: Colors.white,
      );

  TextStyle get light => _base.copyWith(
        color: Colors.black,
      );
}
