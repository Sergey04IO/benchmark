import 'package:benchmark/src/app/core/utils/datetime_util.dart';
import 'package:benchmark/src/data/helper/model_helper/samples.dart';
import 'package:benchmark/src/presentation/bloc/base/base_cubit.dart';
import 'package:benchmark/src/presentation/models/helper_models/datetime_range/datetime_range.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'command_center_state.dart';
part 'command_center_cubit.freezed.dart';

@injectable
class CommandCenterCubit extends BaseCubit<CommandCenterState> {
  CommandCenterCubit() : super(const CommandCenterState.initial());

  Future<void> init() async {
    emit(const CommandCenterState.loading());
    await Future.delayed(const Duration(milliseconds: 500));
    emit(const CommandCenterState.data(Sample.sample1));
  }

  void onSampleChanged(String sampleValue) {
    final sample = CommandCenterSamples.samples.entries
        .firstWhere((element) => element.value == sampleValue)
        .key;
    emit(CommandCenterState.data(sample));
  }

  RangeModel<String> getMultiChartCardAxisDates({
    Locale? locale,
  }) {
    final now = DateTime.now();
    final yesterday = now.subtract(const Duration(hours: 23));
    final from = DateTimeUtil.getDateAndTime12H(
      date: yesterday,
      locale: locale,
    );
    final to = DateTimeUtil.getDateAndTime12H(
      date: now,
      locale: locale,
    );
    return RangeModel<String>(from: from, to: to);
  }
}
