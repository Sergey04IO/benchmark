import 'package:benchmark/src/app/config/di/injector.dart';
import 'package:benchmark/src/app/config/firebase/firebase_options.dart';
import 'package:benchmark/src/app/core/constants/locales/app_locales.dart';
import 'package:benchmark/src/app/core/generated/translations/codegen_loader.g.dart';
import 'package:benchmark/src/domain/services/deeplinks_service.dart';
import 'package:benchmark/src/presentation/app.dart';
import 'package:benchmark/src/presentation/bloc/auth/auth_cubit.dart';
import 'package:benchmark/src/presentation/bloc/settings/settings_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:injectable/injectable.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp(
    name: _getFirebaseAppName(),
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setUrlStrategy(PathUrlStrategy());
  await configureInjection(Environment.prod);
  await _initData();

  runApp(
    EasyLocalization(
      supportedLocales: AppLocales.appLocales,
      path: 'assets/translations',
      fallbackLocale: AppLocales.enLocale,
      assetLoader: const CodegenLoader(),
      child: App(),
    ),
  );
}

Future<void> _initData() async {
  /// _firebaseRemoteConfigInit should be called before other functions!
  await _firebaseRemoteConfigInit();
  final isUsedSSO = getIt<SettingsCubit>().isUsedSSO();
  await _initDeeplinks(isUsedSSO: isUsedSSO);
  await _initSSO(isUsedSSO: isUsedSSO);
}

Future<void> _firebaseRemoteConfigInit() async {
  await getIt<SettingsCubit>().firebaseRemoteConfigInit();
}

Future<void> _initSSO({required bool isUsedSSO}) async {
  if (!isUsedSSO) return;
  await getIt<AuthCubit>().initSSO();
}

Future<void> _initDeeplinks({required bool isUsedSSO}) async {
  if (!isUsedSSO) return;
  await getIt<DeeplinksService>().initDeeplinks();
}

String _getFirebaseAppName() {
  if (kIsWeb) {
    return 'benchmark-web';
  }
  switch (defaultTargetPlatform) {
    case TargetPlatform.android:
      return 'benchmark-android';
    case TargetPlatform.iOS:
      return 'benchmark-ios';
    default:
      return '';
  }
}
