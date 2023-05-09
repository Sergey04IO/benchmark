part of 'analytics_cubit.dart';

@freezed
class AnalyticsState with _$AnalyticsState {
  const factory AnalyticsState.initial() = _Initial;
  const factory AnalyticsState.loading() = Loading;
  const factory AnalyticsState.error(String message) = Error;
  const factory AnalyticsState.data(AnalyticsUIModel model) = Data;
  const factory AnalyticsState.clearState() = _ClearState;
}
