import 'package:equatable/equatable.dart';

abstract class BenchmarkException extends Equatable implements Exception {
  const BenchmarkException(this.error);

  final String error;
  @override
  List<Object?> get props => [error];
}

class ApiException extends BenchmarkException {
  const ApiException({String error = ''}) : super(error);
}

class CacheException extends BenchmarkException {
  const CacheException({String error = ''}) : super(error);
}

class UnhandledException extends BenchmarkException {
  const UnhandledException({String error = ''}) : super(error);
}
