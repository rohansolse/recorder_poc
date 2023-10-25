// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:recorder_poc/app_color.dart';
import 'package:recorder_poc/size_config.dart';

/// enum for font weight
enum FontWeightEnum { light, bold, medium, w700, w100, w400 }

enum FontFamilyEnum {
  roboto,
  archivo,
}

enum TextSize { l1, d1, d2, h1, h2, h3, h4, h5, h6, base, small, PBase }

enum DeviceType { MOBILE, TABLET, DESKTOP }

class TextSizes {
  /// MOBILE sizes
  static const mobileTypeScale = {
    TextSize.l1: 64.0,
    TextSize.d1: 50.0,
    TextSize.d2: 42.0,
    TextSize.h1: 24.0,
    TextSize.h2: 22.0,
    TextSize.h3: 20.0,
    TextSize.h4: 18.0,
    TextSize.h5: 17.0,
    TextSize.h6: 16.0,
    TextSize.base: 16.0,
    TextSize.small: 13.0,
    TextSize.PBase: 15.0
  };

  /// TABLET sizes
  static const tabletTypeScale = {
    TextSize.d1: 68.0,
    TextSize.d2: 48.0,
    TextSize.h1: 42.0,
    TextSize.h2: 32.0,
    TextSize.h3: 26.0,
    TextSize.h4: 22.0,
    TextSize.h5: 16.0,
    TextSize.h6: 14.0,
    TextSize.base: 16.0,
    TextSize.small: 14.0,
  };
}

extension DEVICETYPEEXT on DeviceType {
  Map<TextSize, double> get typeScale {
    switch (this) {
      case DeviceType.MOBILE:
        return TextSizes.mobileTypeScale;
      case DeviceType.TABLET:
        return TextSizes.tabletTypeScale;
      default:
        return {};
    }
  }
}

extension FONTWEIGHTEXT on FontWeightEnum {
  FontWeight? get value {
    switch (this) {
      case FontWeightEnum.light:
        return FontWeight.w300;
      case FontWeightEnum.medium:
        return FontWeight.w500;
      case FontWeightEnum.bold:
        return FontWeight.w600;
      case FontWeightEnum.w700:
        return FontWeight.w700;
      case FontWeightEnum.w100:
        return FontWeight.w100;
      case FontWeightEnum.w400:
        return FontWeight.w400;
      default:
        return FontWeight.normal;
    }
  }
}

getFontFamily(FontFamilyEnum fontFamily) {
  switch (fontFamily) {
    case FontFamilyEnum.roboto:
      return 'Roboto';
    case FontFamilyEnum.archivo:
      return 'Archivo';
  }
}

class PText extends StatelessWidget {
  final String title;
  final TextSize type;
  final Color color;
  final DeviceType device;
  final FontWeightEnum weight;
  final bool isOverflow;
  final bool isMaxLines;
  final int maxLine;
  final double? height;
  final FontFamilyEnum fontFamily;
  final TextDecoration? textDecoration;
  final TextAlign? textAlign;

  const PText(this.title,
      {Key? key,
      this.type = TextSize.base,
      this.isOverflow = false,
      this.color = AppColor.textPrimaryColor,
      this.device = DeviceType.MOBILE,
      this.weight = FontWeightEnum.medium,
      this.isMaxLines = false,
      this.maxLine = 3,
      this.fontFamily = FontFamilyEnum.roboto,
      this.textDecoration,
      this.height,
      this.textAlign})
      : super(key: key);

  getFontFamily() {
    switch (fontFamily) {
      case FontFamilyEnum.roboto:
        return 'Roboto';
      case FontFamilyEnum.archivo:
        return 'Archivo';
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Text(
      title,
      overflow: isOverflow ? TextOverflow.ellipsis : null,
      textScaleFactor: 1.0,
      textAlign: textAlign,
      maxLines: isMaxLines ? maxLine : null,
      style: TextStyle(
        height: height,
        color: color,
        fontFamily: getFontFamily(),
        fontSize: SizeConfig.devicetype!.typeScale[type],
        fontWeight: weight.value,
        decoration: textDecoration ?? TextDecoration.none,
      ),
    );
  }
}
