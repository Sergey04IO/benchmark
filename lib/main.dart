import 'package:benchmark/src/app/config/di/injector.dart';
import 'package:benchmark/src/app/core/constants/common.dart';
import 'package:benchmark/src/domain/services/deeplinks_service.dart';
import 'package:benchmark/src/presentation/app.dart';
import 'package:benchmark/src/presentation/bloc/auth/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:injectable/injectable.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setUrlStrategy(PathUrlStrategy());
  await configureInjection(Environment.prod);
  await _initDeeplinks();
  await _initSSO();
  runApp(App());
}

Future<void> _initSSO() async {
  if (!CommonConstants.isUsedSSO) return;
  await getIt<AuthCubit>().initSSO();
}

Future<void> _initDeeplinks() async {
  if (!CommonConstants.isUsedSSO) return;
  await getIt<DeeplinksService>().initDeeplinks();
}
