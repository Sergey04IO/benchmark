import 'package:benchmark/src/app/config/di/injector.dart';
import 'package:benchmark/src/presentation/app.dart';
import 'package:benchmark/src/presentation/bloc/auth/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:injectable/injectable.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setUrlStrategy(PathUrlStrategy());
  await configureInjection(Environment.prod);
  await _initSSO();
  runApp(App());
}

Future<void> _initSSO() async {
  await getIt<AuthCubit>().initSSO();
}
