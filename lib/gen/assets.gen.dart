/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  $AssetsImagesIconsGen get icons => const $AssetsImagesIconsGen();
}

class $AssetsImagesIconsGen {
  const $AssetsImagesIconsGen();

  /// File path: assets/images/icons/cart.svg
  String get cart => 'assets/images/icons/cart.svg';

  /// File path: assets/images/icons/community.svg
  String get community => 'assets/images/icons/community.svg';

  /// File path: assets/images/icons/explore.svg
  String get explore => 'assets/images/icons/explore.svg';

  /// File path: assets/images/icons/library.svg
  String get library => 'assets/images/icons/library.svg';

  /// File path: assets/images/icons/menu.svg
  String get menu => 'assets/images/icons/menu.svg';

  /// File path: assets/images/icons/notification.svg
  String get notification => 'assets/images/icons/notification.svg';

  /// File path: assets/images/icons/scan.svg
  String get scan => 'assets/images/icons/scan.svg';

  /// File path: assets/images/icons/search.svg
  String get search => 'assets/images/icons/search.svg';

  /// File path: assets/images/icons/selected_cart.svg
  String get selectedCart => 'assets/images/icons/selected_cart.svg';

  /// File path: assets/images/icons/selected_community.svg
  String get selectedCommunity => 'assets/images/icons/selected_community.svg';

  /// File path: assets/images/icons/selected_explore.svg
  String get selectedExplore => 'assets/images/icons/selected_explore.svg';

  /// File path: assets/images/icons/selected_library.svg
  String get selectedLibrary => 'assets/images/icons/selected_library.svg';

  /// List of all assets
  List<String> get values => [
        cart,
        community,
        explore,
        library,
        menu,
        notification,
        scan,
        search,
        selectedCart,
        selectedCommunity,
        selectedExplore,
        selectedLibrary
      ];
}

class Assets {
  Assets._();

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
