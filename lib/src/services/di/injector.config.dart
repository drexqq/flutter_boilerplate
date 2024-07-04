// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_boilerplate/src/features/app/blocs/app_bloc.dart'
    as _i5;
import 'package:flutter_boilerplate/src/features/auth/blocs/auth_bloc.dart'
    as _i6;
import 'package:flutter_boilerplate/src/services/database/shared_prefs_service.dart'
    as _i12;

// Package imports:
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i3;

// Project imports:
import 'package:flutter_boilerplate/src/services/di/router_di.dart' as _i14;
import 'package:flutter_boilerplate/src/services/router/router.dart' as _i4;
import 'package:flutter_boilerplate/src/theme/app_color_scheme.dart' as _i11;
import 'package:flutter_boilerplate/src/theme/app_size_scheme.dart' as _i9;
import 'package:flutter_boilerplate/src/theme/app_text_theme.dart' as _i8;
import 'package:flutter_boilerplate/src/theme/app_theme.dart' as _i10;
import 'package:flutter_boilerplate/src/utils/constants.dart' as _i7;

import 'package:flutter_boilerplate/src/services/di/shared_pref_di.dart'
    as _i13;

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
    gh.lazySingleton<_i5.AppBloc>(() => _i5.AppBloc());
    gh.lazySingleton<_i6.AuthBloc>(() => _i6.AuthBloc());
    gh.lazySingleton<_i7.Constants>(() => _i7.Constants());
    gh.lazySingleton<_i8.AppTextTheme>(() => _i8.AppTextTheme());
    gh.lazySingleton<_i9.AppSizeScheme>(() => _i9.AppSizeScheme());
    gh.lazySingleton<_i10.AppTheme>(() => _i10.AppTheme());
    gh.lazySingleton<_i11.AppColorScheme>(() => _i11.AppColorScheme());
    gh.singleton<_i12.SharedPrefsService>(
        () => _i12.SharedPrefsService(gh<_i3.SharedPreferences>()));
    return this;
  }
}

class _$SharedPrefsInjection extends _i13.SharedPrefsInjection {}

class _$RouterInjection extends _i14.RouterInjection {}
