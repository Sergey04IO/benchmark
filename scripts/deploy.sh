#!/usr/bin/env bash
set -e
flutter clean
flutter pub get
flutter pub run build_runner build -d
flutter pub run easy_localization:generate -S assets/translations -O lib/src/app/core/generated/translations -f json -o codegen_loader.g.dart
flutter pub run easy_localization:generate -S assets/translations -O lib/src/app/core/generated/translations -f keys -o locale_keys.g.dart
flutter build web
firebase deploy