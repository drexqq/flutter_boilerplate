// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_boilerplate/src/services/database/shared_prefs_service.dart'
    as _i10;

// Package imports:
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i3;

// Project imports:
import 'package:flutter_boilerplate/src/services/di/router_di.dart' as _i12;
import 'package:flutter_boilerplate/src/services/router/router.dart' as _i4;
import 'package:flutter_boilerplate/src/theme/app_color_scheme.dart' as _i8;
import 'package:flutter_boilerplate/src/theme/app_size_scheme.dart' as _i7;
import 'package:flutter_boilerplate/src/theme/app_text_theme.dart' as _i6;
import 'package:flutter_boilerplate/src/theme/app_theme.dart' as _i5;
import 'package:flutter_boilerplate/src/utils/constants.dart' as _i9;

import 'package:flutter_boilerplate/src/services/di/shared_pref_di.dart'
    as _i11;

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
    final routerInjection = _$RouterInjection();
    await gh.factoryAsync<_i3.SharedPreferences>(
      () => sharedPrefsInjection.prefs,
      preResolve: true,
    );
    gh.factory<_i4.AppRouter>(() => routerInjection.router());
    gh.lazySingleton<_i5.AppTheme>(() => _i5.AppTheme());
    gh.lazySingleton<_i6.AppTextTheme>(() => _i6.AppTextTheme());
    gh.lazySingleton<_i7.AppSizeScheme>(() => _i7.AppSizeScheme());
    gh.lazySingleton<_i8.AppColorScheme>(() => _i8.AppColorScheme());
    gh.lazySingleton<_i9.Constants>(() => _i9.Constants());
    gh.singleton<_i10.SharedPrefsService>(
        () => _i10.SharedPrefsService(gh<_i3.SharedPreferences>()));
    return this;
  }
}

class _$SharedPrefsInjection extends _i11.SharedPrefsInjection {}

class _$RouterInjection extends _i12.RouterInjection {}
