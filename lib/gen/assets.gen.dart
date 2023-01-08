/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';

class $AssetsEnvGen {
  const $AssetsEnvGen();

  /// File path: assets/env/.env.dev
  String get envDev => 'assets/env/.env.dev';

  /// File path: assets/env/.env.prod
  String get envProd => 'assets/env/.env.prod';

  /// List of all assets
  List<String> get values => [envDev, envProd];
}

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Pretendard-Black.ttf
  String get pretendardBlack => 'assets/fonts/Pretendard-Black.ttf';

  /// File path: assets/fonts/Pretendard-Bold.ttf
  String get pretendardBold => 'assets/fonts/Pretendard-Bold.ttf';

  /// File path: assets/fonts/Pretendard-ExtraBold.ttf
  String get pretendardExtraBold => 'assets/fonts/Pretendard-ExtraBold.ttf';

  /// File path: assets/fonts/Pretendard-ExtraLight.ttf
  String get pretendardExtraLight => 'assets/fonts/Pretendard-ExtraLight.ttf';

  /// File path: assets/fonts/Pretendard-Light.ttf
  String get pretendardLight => 'assets/fonts/Pretendard-Light.ttf';

  /// File path: assets/fonts/Pretendard-Medium.ttf
  String get pretendardMedium => 'assets/fonts/Pretendard-Medium.ttf';

  /// File path: assets/fonts/Pretendard-Regular.ttf
  String get pretendardRegular => 'assets/fonts/Pretendard-Regular.ttf';

  /// File path: assets/fonts/Pretendard-SemiBold.ttf
  String get pretendardSemiBold => 'assets/fonts/Pretendard-SemiBold.ttf';

  /// File path: assets/fonts/Pretendard-Thin.ttf
  String get pretendardThin => 'assets/fonts/Pretendard-Thin.ttf';

  /// List of all assets
  List<String> get values => [
        pretendardBlack,
        pretendardBold,
        pretendardExtraBold,
        pretendardExtraLight,
        pretendardLight,
        pretendardMedium,
        pretendardRegular,
        pretendardSemiBold,
        pretendardThin
      ];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/search_icon.png
  AssetGenImage get searchIcon =>
      const AssetGenImage('assets/icons/search_icon.png');

  /// List of all assets
  List<AssetGenImage> get values => [searchIcon];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/keep_logo.png
  AssetGenImage get keepLogo =>
      const AssetGenImage('assets/images/keep_logo.png');

  /// List of all assets
  List<AssetGenImage> get values => [keepLogo];
}

class Assets {
  Assets._();

  static const $AssetsEnvGen env = $AssetsEnvGen();
  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
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

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
