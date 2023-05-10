// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:benchmark/src/app/config/di/app_module.dart' as _i28;
import 'package:benchmark/src/data/repositories/analytics_repository_impl.dart'
    as _i15;
import 'package:benchmark/src/data/repositories/openid_connect_repository_impl.dart.dart'
    as _i19;
import 'package:benchmark/src/data/repositories/settings_repository_impl.dart'
    as _i22;
import 'package:benchmark/src/data/services/connectivity_service.dart' as _i3;
import 'package:benchmark/src/data/services/deeplinks_service_impl.dart'
    as _i26;
import 'package:benchmark/src/data/services/excel_data_service.dart' as _i6;
import 'package:benchmark/src/data/services/firebase_remote_config_service_impl.dart'
    as _i9;
import 'package:benchmark/src/data/services/gsheets_service.dart' as _i5;
import 'package:benchmark/src/data/services/openid_connect_service.dart'
    as _i12;
import 'package:benchmark/src/data/services/shared_prefs_service.dart' as _i17;
import 'package:benchmark/src/data/sources/local/settings/settings_local_source.dart'
    as _i20;
import 'package:benchmark/src/domain/repositories/analytics_repository.dart'
    as _i14;
import 'package:benchmark/src/domain/repositories/openid_connect_repository.dart'
    as _i18;
import 'package:benchmark/src/domain/repositories/settings_repository.dart'
    as _i21;
import 'package:benchmark/src/domain/services/data_source_service.dart' as _i4;
import 'package:benchmark/src/domain/services/deeplinks_service.dart' as _i25;
import 'package:benchmark/src/domain/services/firebase_remote_config_service.dart'
    as _i8;
import 'package:benchmark/src/domain/services/local_storage_service.dart'
    as _i16;
import 'package:benchmark/src/domain/services/sso_service.dart' as _i11;
import 'package:benchmark/src/presentation/bloc/analytics/analytics_cubit.dart'
    as _i23;
import 'package:benchmark/src/presentation/bloc/auth/auth_cubit.dart' as _i24;
import 'package:benchmark/src/presentation/bloc/home/home_cubit.dart' as _i10;
import 'package:benchmark/src/presentation/bloc/settings/settings_cubit.dart'
    as _i27;
import 'package:firebase_remote_config/firebase_remote_config.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i13;

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
      () => _i5.GsheetsService(gh<_i3.ConnectivityService>()),
      instanceName: 'GsheetsService',
      registerFor: {_prod},
    );
    gh.lazySingleton<_i4.DataSourceService>(
      () => _i6.ExcelDataService(),
      instanceName: 'ExcelDataService',
      registerFor: {_prod},
    );
    gh.singleton<_i7.FirebaseRemoteConfig>(appModule.firebaseRemoteConfig);
    gh.singleton<_i8.FirebaseRemoteConfigService>(
      _i9.FirebaseRemoteConfigServiceImpl(gh<_i7.FirebaseRemoteConfig>()),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i10.HomeCubit>(() => _i10.HomeCubit());
    gh.lazySingleton<_i11.SSOService>(
      () => _i12.OpenIdConnectService(),
      registerFor: {_prod},
    );
    await gh.factoryAsync<_i13.SharedPreferences>(
      () => appModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i14.AnalyticsRepository>(
      () => _i15.AnalyticsRepositoryImpl(
        gh<_i4.DataSourceService>(instanceName: 'GsheetsService'),
        gh<_i4.DataSourceService>(instanceName: 'ExcelDataService'),
      ),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i16.LocalStorageService>(
      () => _i17.SharedPrefsService(gh<_i13.SharedPreferences>()),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i18.OpenIdConnectRepository>(
      () => _i19.OpenIdConnectRepositoryImpl(gh<_i11.SSOService>()),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i20.SettingsLocalSource>(
      () => _i20.SettingsLocalSourceImpl(gh<_i16.LocalStorageService>()),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i21.SettingsRepository>(
      () => _i22.SettingsRepositoryImpl(
        gh<_i20.SettingsLocalSource>(),
        gh<_i8.FirebaseRemoteConfigService>(),
      ),
      registerFor: {_prod},
    );
    gh.factory<_i23.AnalyticsCubit>(
        () => _i23.AnalyticsCubit(gh<_i14.AnalyticsRepository>()));
    gh.factory<_i24.AuthCubit>(
        () => _i24.AuthCubit(gh<_i18.OpenIdConnectRepository>()));
    gh.singleton<_i25.DeeplinksService>(
      _i26.DeeplinksServiceImpl(gh<_i18.OpenIdConnectRepository>()),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i27.SettingsCubit>(() => _i27.SettingsCubit(
          gh<_i21.SettingsRepository>(),
          gh<_i14.AnalyticsRepository>(),
        ));
    return this;
  }
}

class _$AppModule extends _i28.AppModule {}
