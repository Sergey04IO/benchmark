part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.commonState(HomeUIModel model) = CommonState;
  const factory HomeState.clearState() = _ClearState;
}
