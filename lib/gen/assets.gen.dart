/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  AssetGenImage get arrowFillDown =>
      const AssetGenImage('assets/images/arrow_fill_down.png');
  AssetGenImage get arrowFillUp =>
      const AssetGenImage('assets/images/arrow_fill_up.png');
  AssetGenImage get arrowOutDown =>
      const AssetGenImage('assets/images/arrow_out_down.png');
  AssetGenImage get arrowOutLeft =>
      const AssetGenImage('assets/images/arrow_out_left.png');
  AssetGenImage get arrowOutRight =>
      const AssetGenImage('assets/images/arrow_out_right.png');
  AssetGenImage get list => const AssetGenImage('assets/images/list.png');
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');
  AssetGenImage get more => const AssetGenImage('assets/images/more.png');
  AssetGenImage get warning => const AssetGenImage('assets/images/warning.png');
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName)
      : _assetName = assetName,
        super(assetName);
  final String _assetName;

  Image image({
    Key key,
    ImageFrameBuilder frameBuilder,
    ImageLoadingBuilder loadingBuilder,
    ImageErrorWidgetBuilder errorBuilder,
    String semanticLabel,
    bool excludeFromSemantics = false,
    double width,
    double height,
    Color color,
    BlendMode colorBlendMode,
    BoxFit fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => _assetName;
}
