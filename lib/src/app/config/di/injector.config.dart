// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:benchmark/src/app/config/di/app_module.dart' as _i29;
import 'package:benchmark/src/data/repositories/analytics_repository_impl.dart'
    as _i16;
import 'package:benchmark/src/data/repositories/openid_connect_repository_impl.dart.dart'
    as _i20;
import 'package:benchmark/src/data/repositories/settings_repository_impl.dart'
    as _i23;
import 'package:benchmark/src/data/services/connectivity_service.dart' as _i4;
import 'package:benchmark/src/data/services/deeplinks_service_impl.dart'
    as _i27;
import 'package:benchmark/src/data/services/excel_data_service.dart' as _i7;
import 'package:benchmark/src/data/services/firebase_remote_config_service_impl.dart'
    as _i10;
import 'package:benchmark/src/data/services/gsheets_service.dart' as _i6;
import 'package:benchmark/src/data/services/openid_connect_service.dart'
    as _i13;
import 'package:benchmark/src/data/services/shared_prefs_service.dart' as _i18;
import 'package:benchmark/src/data/sources/local/settings/settings_local_source.dart'
    as _i21;
import 'package:benchmark/src/domain/repositories/analytics_repository.dart'
    as _i15;
import 'package:benchmark/src/domain/repositories/openid_connect_repository.dart'
    as _i19;
import 'package:benchmark/src/domain/repositories/settings_repository.dart'
    as _i22;
import 'package:benchmark/src/domain/services/data_source_service.dart' as _i5;
import 'package:benchmark/src/domain/services/deeplinks_service.dart' as _i26;
import 'package:benchmark/src/domain/services/firebase_remote_config_service.dart'
    as _i9;
import 'package:benchmark/src/domain/services/local_storage_service.dart'
    as _i17;
import 'package:benchmark/src/domain/services/sso_service.dart' as _i12;
import 'package:benchmark/src/presentation/bloc/analytics/analytics_cubit.dart'
    as _i24;
import 'package:benchmark/src/presentation/bloc/auth/auth_cubit.dart' as _i25;
import 'package:benchmark/src/presentation/bloc/command_center/command_center_cubit.dart'
    as _i3;
import 'package:benchmark/src/presentation/bloc/home/home_cubit.dart' as _i11;
import 'package:benchmark/src/presentation/bloc/settings/settings_cubit.dart'
    as _i28;
import 'package:firebase_remote_config/firebase_remote_config.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i14;

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
    gh.factory<_i3.CommandCenterCubit>(() => _i3.CommandCenterCubit());
    gh.singleton<_i4.ConnectivityService>(_i4.ConnectivityService());
    gh.lazySingleton<_i5.DataSourceService>(
      () => _i6.GsheetsService(gh<_i4.ConnectivityService>()),
      instanceName: 'GsheetsService',
      registerFor: {_prod},
    );
    gh.lazySingleton<_i5.DataSourceService>(
      () => _i7.ExcelDataService(),
      instanceName: 'ExcelDataService',
      registerFor: {_prod},
    );
    gh.singleton<_i8.FirebaseRemoteConfig>(appModule.firebaseRemoteConfig);
    gh.singleton<_i9.FirebaseRemoteConfigService>(
      _i10.FirebaseRemoteConfigServiceImpl(gh<_i8.FirebaseRemoteConfig>()),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i11.HomeCubit>(() => _i11.HomeCubit());
    gh.lazySingleton<_i12.SSOService>(
      () => _i13.OpenIdConnectService(),
      registerFor: {_prod},
    );
    await gh.factoryAsync<_i14.SharedPreferences>(
      () => appModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i15.AnalyticsRepository>(
      () => _i16.AnalyticsRepositoryImpl(
        gh<_i5.DataSourceService>(instanceName: 'GsheetsService'),
        gh<_i5.DataSourceService>(instanceName: 'ExcelDataService'),
      ),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i17.LocalStorageService>(
      () => _i18.SharedPrefsService(gh<_i14.SharedPreferences>()),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i19.OpenIdConnectRepository>(
      () => _i20.OpenIdConnectRepositoryImpl(gh<_i12.SSOService>()),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i21.SettingsLocalSource>(
      () => _i21.SettingsLocalSourceImpl(gh<_i17.LocalStorageService>()),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i22.SettingsRepository>(
      () => _i23.SettingsRepositoryImpl(
        gh<_i21.SettingsLocalSource>(),
        gh<_i9.FirebaseRemoteConfigService>(),
      ),
      registerFor: {_prod},
    );
    gh.factory<_i24.AnalyticsCubit>(
        () => _i24.AnalyticsCubit(gh<_i15.AnalyticsRepository>()));
    gh.factory<_i25.AuthCubit>(
        () => _i25.AuthCubit(gh<_i19.OpenIdConnectRepository>()));
    gh.singleton<_i26.DeeplinksService>(
      _i27.DeeplinksServiceImpl(gh<_i19.OpenIdConnectRepository>()),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i28.SettingsCubit>(() => _i28.SettingsCubit(
          gh<_i22.SettingsRepository>(),
          gh<_i15.AnalyticsRepository>(),
        ));
    return this;
  }
}

class _$AppModule extends _i29.AppModule {}
