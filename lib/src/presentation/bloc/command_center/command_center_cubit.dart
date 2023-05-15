import 'package:benchmark/src/app/core/utils/datetime_util.dart';
import 'package:benchmark/src/presentation/bloc/base/base_cubit.dart';
import 'package:benchmark/src/presentation/models/helper_models/datetime_range/datetime_range.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'command_center_state.dart';
part 'command_center_cubit.freezed.dart';

@injectable
class CommandCenterCubit extends BaseCubit<CommandCenterState> {
  CommandCenterCubit() : super(const CommandCenterState.initial());

  RangeModel<String> getMultiChartCardAxisDates() {
    final now = DateTime.now();
    final yesterday = now.subtract(const Duration(hours: 23));
    final from = DateTimeUtil.getDateAndTime12H(date: yesterday);
    final to = DateTimeUtil.getDateAndTime12H(date: now);
    return RangeModel<String>(from: from, to: to);
  }
}
