import 'package:benchmark/src/presentation/bloc/base/base_cubit.dart';
import 'package:benchmark/src/presentation/models/ui_models/home/home_ui_model/home_ui_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

@lazySingleton
class HomeCubit extends BaseCubit<HomeState> {
  HomeCubit() : super(const HomeState.initial());

  Future<void> useAppBarTitle(HomeUIModel model) async {
    emit(const HomeState.clearState());
    emit(HomeState.commonState(model));
  }

  Future<void> clearAppBarTitle() async {
    emit(const HomeState.clearState());
    emit(const HomeState.commonState(HomeUIModel()));
  }
}
