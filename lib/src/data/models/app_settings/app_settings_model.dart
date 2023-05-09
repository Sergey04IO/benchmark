import 'package:benchmark/src/app/core/enums/initial_page.dart';
import 'package:benchmark/src/domain/entities/app_settings/app_settings_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings_model.freezed.dart';
part 'app_settings_model.g.dart';

@freezed
class AppSettingsModel with _$AppSettingsModel {
  const factory AppSettingsModel({
    @Default(false) bool isUsedSSO,
    @Default(InitialPage.home) InitialPage initialPage,
  }) = _AppSettingsModel;

  factory AppSettingsModel.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsModelFromJson(json);

  const AppSettingsModel._();

  AppSettingsEntity toEntity() {
    return AppSettingsEntity(
      isUsedSSO: isUsedSSO,
      initialPage: initialPage,
    );
  }
}
