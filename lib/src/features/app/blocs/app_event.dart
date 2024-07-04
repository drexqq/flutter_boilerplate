// Package imports:
import 'package:equatable/equatable.dart';

// Project imports:
import 'package:flutter_boilerplate/src/features/app/blocs/app_state.dart';

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
