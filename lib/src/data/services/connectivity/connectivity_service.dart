import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';

@singleton
class ConnectivityService {
  Future<bool> hasInternet() async {
    final result = await Connectivity().checkConnectivity();
    final hasInternet = result != ConnectivityResult.none;
    return hasInternet;
  }
}
