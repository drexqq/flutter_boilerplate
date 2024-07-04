// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:flutter_boilerplate/src/services/router/router.dart';

@module
abstract class RouterInjection {
  AppRouter router() => AppRouter();
}
