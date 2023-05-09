#!/usr/bin/env bash
set -e
flutter clean
flutter pub get
flutter pub run build_runner build -d
flutter build web
firebase deploy