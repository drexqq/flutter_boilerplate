// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_boilerplate/src/services/database/shared_prefs_service.dart'
    as _i4;

// Package imports:
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i3;

// Project imports:
import 'package:flutter_boilerplate/src/services/di/shared_pref_di.dart' as _i5;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final sharedPrefsInjection = _$SharedPrefsInjection();
    await gh.factoryAsync<_i3.SharedPreferences>(
      () => sharedPrefsInjection.prefs,
      preResolve: true,
    );
    gh.singleton<_i4.SharedPrefsService>(
        () => _i4.SharedPrefsService(gh<_i3.SharedPreferences>()));
    return this;
  }
}

class _$SharedPrefsInjection extends _i5.SharedPrefsInjection {}
