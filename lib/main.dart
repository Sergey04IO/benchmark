import 'package:benchmark/src/app/config/di/injector.dart';
import 'package:benchmark/src/presentation/app.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Environment.prod);
  runApp(const App());
}
