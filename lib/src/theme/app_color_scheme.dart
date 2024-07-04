// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:injectable/injectable.dart';

@immutable
@lazySingleton
class AppColorScheme {
  static const Color keyColor = Colors.blue;

  static const Color white = Colors.white;

  static const Color black = Colors.black;

  static const Color grey = Colors.grey;
}
