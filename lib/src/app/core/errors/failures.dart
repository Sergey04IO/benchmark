import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure(this.message);

  final String message;

  @override
  List<Object?> get props => [message];
}

class ServerFailure extends Failure {
  const ServerFailure({
    required String message,
  }) : super(message);
}

class ClientFailure extends Failure {
  const ClientFailure({
    required String message,
  }) : super(message);
}

class CacheFailure extends Failure {
  const CacheFailure({
    required String message,
  }) : super(message);
}

class EmptyDataFailure extends Failure {
  const EmptyDataFailure({
    required String message,
  }) : super(message);
}

class NetworkFailure extends Failure {
  const NetworkFailure({
    String message = 'Internet connection is absent!',
  }) : super(message);
}

class TokenExpiredFailure extends Failure {
  const TokenExpiredFailure({
    String message = 'Token is expired! Try again later!',
  }) : super(message);
}

class UnhandledFailure extends Failure {
  const UnhandledFailure({
    String message = 'Unhandled error occurred!',
  }) : super(message);
}
