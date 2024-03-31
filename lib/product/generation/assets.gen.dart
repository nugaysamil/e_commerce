/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsColorGen {
  const $AssetsColorGen();

  /// File path: assets/color/color.xml
  String get color => 'assets/color/color.xml';

  /// List of all assets
  List<String> get values => [color];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/image_not_found.png
  AssetGenImage get imageNotFound =>
      const AssetGenImage('assets/images/image_not_found.png');

  /// File path: assets/images/images.png
  AssetGenImage get images => const AssetGenImage('assets/images/images.png');

  /// File path: assets/images/img_arrow_down.svg
  String get imgArrowDown => 'assets/images/img_arrow_down.svg';

  /// File path: assets/images/img_bag.svg
  String get imgBag => 'assets/images/img_bag.svg';

  /// File path: assets/images/img_brightness.svg
  String get imgBrightness => 'assets/images/img_brightness.svg';

  /// File path: assets/images/img_cart.svg
  String get imgCart => 'assets/images/img_cart.svg';

  /// File path: assets/images/img_cart_blue_gray_900.svg
  String get imgCartBlueGray900 => 'assets/images/img_cart_blue_gray_900.svg';

  /// File path: assets/images/img_cart_primary.svg
  String get imgCartPrimary => 'assets/images/img_cart_primary.svg';

  /// File path: assets/images/img_cut.svg
  String get imgCut => 'assets/images/img_cut.svg';

  /// File path: assets/images/img_eye.svg
  String get imgEye => 'assets/images/img_eye.svg';

  /// File path: assets/images/img_favorite.svg
  String get imgFavorite => 'assets/images/img_favorite.svg';

  /// File path: assets/images/img_favorite_blue_gray_900.svg
  String get imgFavoriteBlueGray900 =>
      'assets/images/img_favorite_blue_gray_900.svg';

  /// File path: assets/images/img_favorite_gray_500.svg
  String get imgFavoriteGray500 => 'assets/images/img_favorite_gray_500.svg';

  /// File path: assets/images/img_favorite_onprimary.svg
  String get imgFavoriteOnprimary => 'assets/images/img_favorite_onprimary.svg';

  /// File path: assets/images/img_favorite_primary.svg
  String get imgFavoritePrimary => 'assets/images/img_favorite_primary.svg';

  /// File path: assets/images/img_home.svg
  String get imgHome => 'assets/images/img_home.svg';

  /// File path: assets/images/img_home_gray_500.svg
  String get imgHomeGray500 => 'assets/images/img_home_gray_500.svg';

  /// File path: assets/images/img_icon.svg
  String get imgIcon => 'assets/images/img_icon.svg';

  /// File path: assets/images/img_image.svg
  String get imgImage => 'assets/images/img_image.svg';

  /// File path: assets/images/img_lock.svg
  String get imgLock => 'assets/images/img_lock.svg';

  /// File path: assets/images/img_megaphone.svg
  String get imgMegaphone => 'assets/images/img_megaphone.svg';

  /// File path: assets/images/img_minimize.svg
  String get imgMinimize => 'assets/images/img_minimize.svg';

  /// File path: assets/images/img_plus.svg
  String get imgPlus => 'assets/images/img_plus.svg';

  /// File path: assets/images/img_rewind.svg
  String get imgRewind => 'assets/images/img_rewind.svg';

  /// File path: assets/images/img_send.svg
  String get imgSend => 'assets/images/img_send.svg';

  /// File path: assets/images/img_settings.svg
  String get imgSettings => 'assets/images/img_settings.svg';

  /// File path: assets/images/img_settings_gray_500.svg
  String get imgSettingsGray500 => 'assets/images/img_settings_gray_500.svg';

  /// File path: assets/images/img_signal.svg
  String get imgSignal => 'assets/images/img_signal.svg';

  /// File path: assets/images/img_television.svg
  String get imgTelevision => 'assets/images/img_television.svg';

  /// File path: assets/images/img_thumbs_up.svg
  String get imgThumbsUp => 'assets/images/img_thumbs_up.svg';

  /// File path: assets/images/img_thumbs_up_gray_500.svg
  String get imgThumbsUpGray500 => 'assets/images/img_thumbs_up_gray_500.svg';

  /// File path: assets/images/img_thumbs_up_gray_500_44x44.svg
  String get imgThumbsUpGray50044x44 =>
      'assets/images/img_thumbs_up_gray_500_44x44.svg';

  /// File path: assets/images/img_thumbs_up_onprimary.svg
  String get imgThumbsUpOnprimary =>
      'assets/images/img_thumbs_up_onprimary.svg';

  /// List of all assets
  List<dynamic> get values => [
        imageNotFound,
        images,
        imgArrowDown,
        imgBag,
        imgBrightness,
        imgCart,
        imgCartBlueGray900,
        imgCartPrimary,
        imgCut,
        imgEye,
        imgFavorite,
        imgFavoriteBlueGray900,
        imgFavoriteGray500,
        imgFavoriteOnprimary,
        imgFavoritePrimary,
        imgHome,
        imgHomeGray500,
        imgIcon,
        imgImage,
        imgLock,
        imgMegaphone,
        imgMinimize,
        imgPlus,
        imgRewind,
        imgSend,
        imgSettings,
        imgSettingsGray500,
        imgSignal,
        imgTelevision,
        imgThumbsUp,
        imgThumbsUpGray500,
        imgThumbsUpGray50044x44,
        imgThumbsUpOnprimary
      ];
}

class Assets {
  Assets._();

  static const $AssetsColorGen color = $AssetsColorGen();
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
