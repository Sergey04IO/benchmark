import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injector.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  preferRelativeImports: false,
  initializerName: r'$initGetIt',
)
Future<void> configureInjection(String environment) async =>
    getIt.$initGetIt(environment: environment);
