import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_ui_model.freezed.dart';

@freezed
class HomeUIModel with _$HomeUIModel {
  const factory HomeUIModel({
    Widget? appBarTitle,
    Color? backgroundColor,
    Color? iconColor,
    Color? appBarColor,
  }) = _HomeUIModel;
}
