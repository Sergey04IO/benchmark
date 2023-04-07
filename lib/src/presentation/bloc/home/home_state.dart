part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = Initial;
  const factory HomeState.loading() = Loading;
  const factory HomeState.error(String message) = Error;
  const factory HomeState.data(HomeUIModel model) = Data;
  const factory HomeState.clearState() = ClearState;
}
