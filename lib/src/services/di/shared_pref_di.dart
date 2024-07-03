// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class SharedPrefsInjection {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}
