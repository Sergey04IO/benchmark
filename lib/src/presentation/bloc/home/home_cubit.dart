import 'package:benchmark/src/app/core/enums/home_page.dart';
import 'package:benchmark/src/app/core/theme/custom_theme/colors/command_center_color_theme.dart';
import 'package:benchmark/src/presentation/bloc/base/base_cubit.dart';
import 'package:benchmark/src/presentation/models/ui_models/home/home_ui_model/home_ui_model.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

@lazySingleton
class HomeCubit extends BaseCubit<HomeState> {
  HomeCubit() : super(const HomeState.initial());

  Future<void> setCommandCenterTheme(
    BuildContext context, {
    Widget? title,
  }) async {
    final theme = CommandCenterColorTheme.of(context);
    final model = HomeUIModel(
      backgroundColor: theme?.backgroundColor,
      appBarColor: theme?.appBarColor,
      iconColor: theme?.iconColor,
      appBarTitle: title,
      page: HomePageType.commandCenter,
    );
    _useHomeUI(model);
  }

  Future<void> setAnalyticsTheme(
    BuildContext context, {
    Widget? title,
  }) async {
    final model = HomeUIModel(
      appBarTitle: title,
      page: HomePageType.analytics,
    );
    _useHomeUI(model);
  }

  Future<void> _useHomeUI(HomeUIModel model) async {
    emit(const HomeState.clearState());
    emit(HomeState.commonState(model));
  }
}
