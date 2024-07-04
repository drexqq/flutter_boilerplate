// Package imports:
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:flutter_boilerplate/src/services/di/injector.config.dart';

// Project imports:

final GetIt getIt = GetIt.instance;

@InjectableInit()
Future<GetIt> configureDependencies() async => await getIt.init();
