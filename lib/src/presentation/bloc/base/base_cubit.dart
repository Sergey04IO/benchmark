import 'package:flutter_bloc/flutter_bloc.dart';

class BaseCubit<T> extends Cubit<T> {
  BaseCubit(super.state);

  @override
  void emit(T state) {
    if (isClosed) return;
    super.emit(state);
  }
}
