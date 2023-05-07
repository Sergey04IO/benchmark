import 'package:benchmark/src/app/core/errors/failures.dart';

abstract class BaseRepository {
  Future<Failure> catchError(dynamic e) {
    return _catchError(e);
  }

  Future<Failure> _catchError(e) async {
    try {
      return const UnhandledFailure();
    } catch (e) {
      return const UnhandledFailure();
    }
  }
}
