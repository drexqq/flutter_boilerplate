// Package imports:
import 'package:equatable/equatable.dart';

enum AppThemeMode {
  system,
  light,
  dark,
}

abstract class AppEvent extends Equatable {}

/// 디바이스 밝기 모드 이벤트
class AppThemeChangeEvent extends AppEvent {
  final AppThemeMode themeMode;
  AppThemeChangeEvent({
    required this.themeMode,
  });
  @override
  List<Object?> get props => [themeMode];
}
