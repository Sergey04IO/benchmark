import 'package:benchmark/src/app/core/enums/initial_page.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings_entity.freezed.dart';

@freezed
class AppSettingsEntity with _$AppSettingsEntity {
  const factory AppSettingsEntity({
    @Default(false) bool isUsedSSO,
    @Default(InitialPage.analytics) InitialPage initialPage,
  }) = _AppSettingsEntity;
}
