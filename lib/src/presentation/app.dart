// ignore_for_file: avoid_redundant_argument_values

import 'package:benchmark/src/presentation/pages/home_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Benchmark Demo',
      debugShowCheckedModeBanner: kDebugMode,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.trackpad,
        },
      ),
      home: const HomePage(),
    );
  }
}
