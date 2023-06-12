part of 'command_center_cubit.dart';

@freezed
class CommandCenterState with _$CommandCenterState {
  const factory CommandCenterState.initial() = _Initial;
  const factory CommandCenterState.loading() = Loading;
  const factory CommandCenterState.data(Sample sample) = Data;
  const factory CommandCenterState.error(String error) = _Error;
  const factory CommandCenterState.clearState() = _ClearState;
}
