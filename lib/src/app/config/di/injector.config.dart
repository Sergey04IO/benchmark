// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:benchmark/src/app/config/di/app_module.dart' as _i22;
import 'package:benchmark/src/data/repositories/home_repository_impl.dart'
    as _i8;
import 'package:benchmark/src/data/repositories/openid_connect_repository_impl.dart.dart'
    as _i16;
import 'package:benchmark/src/data/repositories/settings_repository_impl.dart'
    as _i19;
import 'package:benchmark/src/data/services/connectivity/connectivity_service.dart'
    as _i3;
import 'package:benchmark/src/data/services/excel_data/excel_data_service.dart'
    as _i5;
import 'package:benchmark/src/data/services/gsheets/gsheets_service.dart'
    as _i6;
import 'package:benchmark/src/data/services/openid_connect/openid_connect_service.dart'
    as _i10;
import 'package:benchmark/src/data/services/shared_prefs/shared_prefs_service.dart'
    as _i14;
import 'package:benchmark/src/data/sources/local/settings/settings_local_source.dart'
    as _i17;
import 'package:benchmark/src/domain/repositories/home_repository.dart' as _i7;
import 'package:benchmark/src/domain/repositories/openid_connect_repository.dart'
    as _i15;
import 'package:benchmark/src/domain/repositories/settings_repository.dart'
    as _i18;
import 'package:benchmark/src/domain/services/data_source_service.dart' as _i4;
import 'package:benchmark/src/domain/services/local_storage_service.dart'
    as _i13;
import 'package:benchmark/src/domain/services/sso_service.dart' as _i9;
import 'package:benchmark/src/presentation/bloc/auth/auth_cubit.dart' as _i20;
import 'package:benchmark/src/presentation/bloc/home/home_cubit.dart' as _i12;
import 'package:benchmark/src/presentation/bloc/settings/settings_cubit.dart'
    as _i21;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i11;

const String _prod = 'prod';

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> $initGetIt({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.singleton<_i3.ConnectivityService>(_i3.ConnectivityService());
    gh.lazySingleton<_i4.DataSourceService>(
      () => _i5.ExcelDataService(),
      instanceName: 'ExcelDataService',
      registerFor: {_prod},
    );
    gh.lazySingleton<_i4.DataSourceService>(
      () => _i6.GsheetsService(gh<_i3.ConnectivityService>()),
      instanceName: 'GsheetsService',
      registerFor: {_prod},
    );
    gh.lazySingleton<_i7.HomeRepository>(
      () => _i8.HomeRepositoryImpl(
        gh<_i4.DataSourceService>(instanceName: 'GsheetsService'),
        gh<_i4.DataSourceService>(instanceName: 'ExcelDataService'),
      ),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i9.SSOService>(
      () => _i10.OpenIdConnectService(),
      registerFor: {_prod},
    );
    await gh.factoryAsync<_i11.SharedPreferences>(
      () => appModule.prefs,
      preResolve: true,
    );
    gh.factory<_i12.HomeCubit>(() => _i12.HomeCubit(gh<_i7.HomeRepository>()));
    gh.lazySingleton<_i13.LocalStorageService>(
      () => _i14.SharedPrefsService(gh<_i11.SharedPreferences>()),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i15.OpenIdConnectRepository>(
      () => _i16.OpenIdConnectRepositoryImpl(gh<_i9.SSOService>()),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i17.SettingsLocalSource>(
      () => _i17.SettingsLocalSourceImpl(gh<_i13.LocalStorageService>()),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i18.SettingsRepository>(
      () => _i19.SettingsRepositoryImpl(gh<_i17.SettingsLocalSource>()),
      registerFor: {_prod},
    );
    gh.factory<_i20.AuthCubit>(
        () => _i20.AuthCubit(gh<_i15.OpenIdConnectRepository>()));
    gh.lazySingleton<_i21.SettingsCubit>(
        () => _i21.SettingsCubit(gh<_i18.SettingsRepository>()));
    return this;
  }
}

class _$AppModule extends _i22.AppModule {}
