/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  $AssetsImagesIconsGen get icons => const $AssetsImagesIconsGen();
  $AssetsImagesImagesGen get images => const $AssetsImagesImagesGen();
}

class $AssetsImagesIconsGen {
  const $AssetsImagesIconsGen();

  /// File path: assets/images/icons/back.svg
  SvgGenImage get back => const SvgGenImage('assets/images/icons/back.svg');

  /// File path: assets/images/icons/cart.svg
  SvgGenImage get cart => const SvgGenImage('assets/images/icons/cart.svg');

  /// File path: assets/images/icons/community.svg
  SvgGenImage get community =>
      const SvgGenImage('assets/images/icons/community.svg');

  /// File path: assets/images/icons/explore.svg
  SvgGenImage get explore =>
      const SvgGenImage('assets/images/icons/explore.svg');

  /// File path: assets/images/icons/library.svg
  SvgGenImage get library =>
      const SvgGenImage('assets/images/icons/library.svg');

  /// File path: assets/images/icons/menu.svg
  SvgGenImage get menu => const SvgGenImage('assets/images/icons/menu.svg');

  /// File path: assets/images/icons/notification.svg
  SvgGenImage get notification =>
      const SvgGenImage('assets/images/icons/notification.svg');

  /// File path: assets/images/icons/plus.svg
  SvgGenImage get plus => const SvgGenImage('assets/images/icons/plus.svg');

  /// File path: assets/images/icons/scan.svg
  SvgGenImage get scan => const SvgGenImage('assets/images/icons/scan.svg');

  /// File path: assets/images/icons/search.svg
  SvgGenImage get search => const SvgGenImage('assets/images/icons/search.svg');

  /// File path: assets/images/icons/selected_cart.svg
  SvgGenImage get selectedCart =>
      const SvgGenImage('assets/images/icons/selected_cart.svg');

  /// File path: assets/images/icons/selected_community.svg
  SvgGenImage get selectedCommunity =>
      const SvgGenImage('assets/images/icons/selected_community.svg');

  /// File path: assets/images/icons/selected_explore.svg
  SvgGenImage get selectedExplore =>
      const SvgGenImage('assets/images/icons/selected_explore.svg');

  /// File path: assets/images/icons/selected_library.svg
  SvgGenImage get selectedLibrary =>
      const SvgGenImage('assets/images/icons/selected_library.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        back,
        cart,
        community,
        explore,
        library,
        menu,
        notification,
        plus,
        scan,
        search,
        selectedCart,
        selectedCommunity,
        selectedExplore,
        selectedLibrary
      ];
}

class $AssetsImagesImagesGen {
  const $AssetsImagesImagesGen();

  /// File path: assets/images/images/Book_01.png
  AssetGenImage get book01 =>
      const AssetGenImage('assets/images/images/Book_01.png');

  /// File path: assets/images/images/Book_02.png
  AssetGenImage get book02 =>
      const AssetGenImage('assets/images/images/Book_02.png');

  /// File path: assets/images/images/my_wishlist_book_01.png
  AssetGenImage get myWishlistBook01 =>
      const AssetGenImage('assets/images/images/my_wishlist_book_01.png');

  /// File path: assets/images/images/my_wishlist_book_02.png
  AssetGenImage get myWishlistBook02 =>
      const AssetGenImage('assets/images/images/my_wishlist_book_02.png');

  /// File path: assets/images/images/my_wishlist_book_03.png
  AssetGenImage get myWishlistBook03 =>
      const AssetGenImage('assets/images/images/my_wishlist_book_03.png');

  /// File path: assets/images/images/my_wishlist_book_04.png
  AssetGenImage get myWishlistBook04 =>
      const AssetGenImage('assets/images/images/my_wishlist_book_04.png');

  /// File path: assets/images/images/my_wishlist_book_05.png
  AssetGenImage get myWishlistBook05 =>
      const AssetGenImage('assets/images/images/my_wishlist_book_05.png');

  /// File path: assets/images/images/my_wishlist_book_06.png
  AssetGenImage get myWishlistBook06 =>
      const AssetGenImage('assets/images/images/my_wishlist_book_06.png');

  /// File path: assets/images/images/poster_image_01.jpg
  AssetGenImage get posterImage01 =>
      const AssetGenImage('assets/images/images/poster_image_01.jpg');

  /// File path: assets/images/images/poster_image_02.jpg
  AssetGenImage get posterImage02 =>
      const AssetGenImage('assets/images/images/poster_image_02.jpg');

  /// File path: assets/images/images/poster_image_03.jpg
  AssetGenImage get posterImage03 =>
      const AssetGenImage('assets/images/images/poster_image_03.jpg');

  /// File path: assets/images/images/poster_image_04.jpg
  AssetGenImage get posterImage04 =>
      const AssetGenImage('assets/images/images/poster_image_04.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [
        book01,
        book02,
        myWishlistBook01,
        myWishlistBook02,
        myWishlistBook03,
        myWishlistBook04,
        myWishlistBook05,
        myWishlistBook06,
        posterImage01,
        posterImage02,
        posterImage03,
        posterImage04
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

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      // colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
