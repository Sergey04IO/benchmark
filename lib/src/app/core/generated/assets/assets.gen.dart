/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsFilesGen {
  const $AssetsFilesGen();

  /// File path: assets/files/world_map.json
  String get worldMap => 'assets/files/world_map.json';

  /// List of all assets
  List<String> get values => [worldMap];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/facebook_logo.png
  AssetGenImage get facebookLogo =>
      const AssetGenImage('assets/icons/facebook_logo.png');

  /// File path: assets/icons/google_analytics_logo.webp
  AssetGenImage get googleAnalyticsLogo =>
      const AssetGenImage('assets/icons/google_analytics_logo.webp');

  /// File path: assets/icons/google_plus_logo.png
  AssetGenImage get googlePlusLogo =>
      const AssetGenImage('assets/icons/google_plus_logo.png');

  /// File path: assets/icons/instagram_logo.png
  AssetGenImage get instagramLogo =>
      const AssetGenImage('assets/icons/instagram_logo.png');

  /// File path: assets/icons/linkedin_logo.png
  AssetGenImage get linkedinLogo =>
      const AssetGenImage('assets/icons/linkedin_logo.png');

  /// File path: assets/icons/pingdom_logo.png
  AssetGenImage get pingdomLogo =>
      const AssetGenImage('assets/icons/pingdom_logo.png');

  /// File path: assets/icons/quickbooks_logo.png
  AssetGenImage get quickbooksLogo =>
      const AssetGenImage('assets/icons/quickbooks_logo.png');

  /// File path: assets/icons/salesforce_logo.png
  AssetGenImage get salesforceLogo =>
      const AssetGenImage('assets/icons/salesforce_logo.png');

  /// File path: assets/icons/twitter_logo.png
  AssetGenImage get twitterLogo =>
      const AssetGenImage('assets/icons/twitter_logo.png');

  /// File path: assets/icons/youtube_logo.png
  AssetGenImage get youtubeLogo =>
      const AssetGenImage('assets/icons/youtube_logo.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        facebookLogo,
        googleAnalyticsLogo,
        googlePlusLogo,
        instagramLogo,
        linkedinLogo,
        pingdomLogo,
        quickbooksLogo,
        salesforceLogo,
        twitterLogo,
        youtubeLogo
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/metric_management.jpg
  AssetGenImage get metricManagement =>
      const AssetGenImage('assets/images/metric_management.jpg');

  /// File path: assets/images/stock.jpeg
  AssetGenImage get stock => const AssetGenImage('assets/images/stock.jpeg');

  /// List of all assets
  List<AssetGenImage> get values => [metricManagement, stock];
}

class $AssetsTranslationsGen {
  const $AssetsTranslationsGen();

  /// File path: assets/translations/en.json
  String get en => 'assets/translations/en.json';

  /// List of all assets
  List<String> get values => [en];
}

class Assets {
  Assets._();

  static const $AssetsFilesGen files = $AssetsFilesGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsTranslationsGen translations = $AssetsTranslationsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
