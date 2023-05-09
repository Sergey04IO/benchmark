import 'package:benchmark/src/app/core/constants/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

mixin RouterObserverMixin {
  void setPageTitle({String? title}) {
    final label = title != null
        ? '$title - ${CommonConstants.appName}'
        : CommonConstants.appTitle;

    SystemChrome.setApplicationSwitcherDescription(
      ApplicationSwitcherDescription(
        label: label,
        primaryColor: Colors.blue.value, // This line is required
      ),
    );
  }

  String getTitleFromTitleBuilder(String titleBuilder) {
    final startIndex = titleBuilder.indexOf('"');
    final endIndex = titleBuilder.indexOf('"', startIndex + 1);
    final result = titleBuilder.substring(startIndex + 1, endIndex);
    return result;
  }
}
