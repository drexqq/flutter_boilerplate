// Package imports:
// ignore_for_file: unused_field

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:injectable/injectable.dart';

@immutable
@lazySingleton
class AppSizeScheme {
  static final text = _Text();
  static final insets = _Insets();
  static final radius = _Radius();
}

@immutable
class _Text {
  final double textXxl = 44.sp;
  final double textXl = 32.sp;
  final double textL = 24.sp;

  final double textSm = 18.sp;
  final double textM = 16.sp;

  final double textS = 14.sp;
  final double textXs = 12.sp;
  final double textXxs = 10.sp;
}

@immutable
class _Insets {
  final double insetXxl = 16.sp;
  final double insetXl = 14.sp;
  final double insetL = 12.sp;

  final double insetM = 10.sp;
  final double insetSm = 8.sp;

  final double insetS = 6.sp;
  final double insetXs = 4.sp;
  final double insetXxs = 2.sp;
}

@immutable
class _Radius {
  final double radiusL = 30.sp;
  final double radiusM = 20.sp;
  final double radiusS = 10.sp;
}
