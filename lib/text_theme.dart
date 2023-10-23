import 'package:flutter/material.dart';
import 'package:recorder_poc/pine_theme.dart';

enum PineTextTypes {
  HEADER,
  HEADING,
  PARAGRAPH,
  PARAGRAPH_M,
  PARAGRAPH_B,
  LIST,
  SMALL_HEADING,
  MEDIUM_HEADING,
  DATE_HEADING,
  APPBAR_TITLE,
  HOME_FEATURES_TITLE,
  TITLE_COLOR,
  TEXT_FIELD_LABEL,
  TEXT_FIELD_TITLE,

  /// Style for [topMessage] or [bottomMessage] text
  TEXT_FIELD_SUBTITLE,
}

enum PineTextLineHeight { XSMALL, SMALL, MEDIUM, XSMEDIUM }

final _textTypeSize = {
  PineTextTypes.APPBAR_TITLE: PineTheme.fonts.size.appbarTitle,
  PineTextTypes.DATE_HEADING: PineTheme.fonts.size.date,
  PineTextTypes.HEADER: PineTheme.fonts.size.header,
  PineTextTypes.HEADING: PineTheme.fonts.size.heading,
  PineTextTypes.LIST: PineTheme.fonts.size.list,
  PineTextTypes.PARAGRAPH: PineTheme.fonts.size.paragraph,
  PineTextTypes.PARAGRAPH_B: PineTheme.fonts.size.paragraph,
  PineTextTypes.PARAGRAPH_M: PineTheme.fonts.size.paragraph_m,
  PineTextTypes.SMALL_HEADING: PineTheme.fonts.size.body,
  PineTextTypes.MEDIUM_HEADING: PineTheme.fonts.size.filter,
  PineTextTypes.HOME_FEATURES_TITLE: PineTheme.fonts.size.heading,
  PineTextTypes.TITLE_COLOR: PineTheme.fonts.size.appbarTitle,
  PineTextTypes.TEXT_FIELD_LABEL: PineTheme.fonts.size.list,
  PineTextTypes.TEXT_FIELD_TITLE: PineTheme.fonts.size.paragraph_m,
  PineTextTypes.TEXT_FIELD_SUBTITLE: PineTheme.fonts.size.subtitle,
};

final _textTypeFamily = {
  PineTextTypes.APPBAR_TITLE: PineTheme.fonts.family.paragraph,
  PineTextTypes.DATE_HEADING: PineTheme.fonts.family.paragraph,
  PineTextTypes.HEADER: PineTheme.fonts.family.paragraph,
  PineTextTypes.HEADING: PineTheme.fonts.family.heading,
  PineTextTypes.LIST: PineTheme.fonts.family.paragraph,
  PineTextTypes.PARAGRAPH: PineTheme.fonts.family.paragraph,
  PineTextTypes.PARAGRAPH_B: PineTheme.fonts.family.paragraph,
  PineTextTypes.PARAGRAPH_M: PineTheme.fonts.family.paragraph,
  PineTextTypes.SMALL_HEADING: PineTheme.fonts.family.paragraph,
  PineTextTypes.MEDIUM_HEADING: PineTheme.fonts.family.paragraph,
  PineTextTypes.HOME_FEATURES_TITLE: PineTheme.fonts.family.heading,
  PineTextTypes.TITLE_COLOR: PineTheme.fonts.family.paragraph,
  PineTextTypes.TEXT_FIELD_LABEL: PineTheme.fonts.family.paragraph,
  PineTextTypes.TEXT_FIELD_TITLE: PineTheme.fonts.family.paragraph,
  PineTextTypes.TEXT_FIELD_SUBTITLE: PineTheme.fonts.family.paragraph,
};

final _textTypeWeight = {
  PineTextTypes.APPBAR_TITLE: FontWeight.w500,
  PineTextTypes.DATE_HEADING: FontWeight.w700,
  PineTextTypes.HEADER: FontWeight.normal,
  PineTextTypes.HEADING: FontWeight.w700,
  PineTextTypes.LIST: FontWeight.normal,
  PineTextTypes.PARAGRAPH: FontWeight.normal,
  PineTextTypes.PARAGRAPH_B: FontWeight.normal,
  PineTextTypes.PARAGRAPH_M: FontWeight.normal,
  PineTextTypes.SMALL_HEADING: FontWeight.w700,
  PineTextTypes.MEDIUM_HEADING: FontWeight.w700,
  PineTextTypes.HOME_FEATURES_TITLE: FontWeight.w700,
  PineTextTypes.TITLE_COLOR: FontWeight.w700,
  PineTextTypes.TEXT_FIELD_LABEL: FontWeight.w700,
  PineTextTypes.TEXT_FIELD_TITLE: FontWeight.w700,
  PineTextTypes.TEXT_FIELD_SUBTITLE: FontWeight.normal,
};

final _textColor = {
  PineThemeTypes.COMMON: {
    PineTextTypes.APPBAR_TITLE: PineTheme.colors.common.foreground,
    PineTextTypes.DATE_HEADING: PineTheme.colors.common.foreground,
    PineTextTypes.HEADER: PineTheme.colors.common.foreground,
    PineTextTypes.HEADING: PineTheme.colors.common.foreground,
    PineTextTypes.LIST: PineTheme.colors.common.list,
    PineTextTypes.PARAGRAPH: PineTheme.colors.common.paragraph,
    PineTextTypes.PARAGRAPH_B: PineTheme.colors.common.foreground,
    PineTextTypes.PARAGRAPH_M: PineTheme.colors.common.paragraph,
    PineTextTypes.SMALL_HEADING: PineTheme.colors.common.foreground,
    PineTextTypes.MEDIUM_HEADING: PineTheme.colors.common.paragraph,
    PineTextTypes.HOME_FEATURES_TITLE: PineTheme.colors.common.icon,
    PineTextTypes.TITLE_COLOR: PineTheme.colors.common.icon,
    PineTextTypes.TEXT_FIELD_LABEL: PineTheme.colors.common.paragraph,
    PineTextTypes.TEXT_FIELD_TITLE: PineTheme.colors.common.paragraph,
    PineTextTypes.TEXT_FIELD_SUBTITLE: PineTheme.colors.common.paragraph,
  },
  PineThemeTypes.COMMON_INVERSE: {
    PineTextTypes.APPBAR_TITLE: PineTheme.colors.common.background,
    PineTextTypes.DATE_HEADING: PineTheme.colors.common.background,
    PineTextTypes.HEADER: PineTheme.colors.common.background,
    PineTextTypes.HEADING: PineTheme.colors.common.background,
    PineTextTypes.LIST: PineTheme.colors.common.list,
    PineTextTypes.PARAGRAPH: PineTheme.colors.common.separator,
    PineTextTypes.SMALL_HEADING: PineTheme.colors.common.background,
    PineTextTypes.MEDIUM_HEADING: PineTheme.colors.common.paragraph,
    PineTextTypes.HOME_FEATURES_TITLE: PineTheme.colors.common.icon,
    PineTextTypes.TITLE_COLOR: PineTheme.colors.common.background,
    PineTextTypes.TEXT_FIELD_LABEL: PineTheme.colors.common.paragraph,
  },
  PineThemeTypes.PRIMARY: {
    PineTextTypes.APPBAR_TITLE: PineTheme.colors.primary.foreground,
    PineTextTypes.DATE_HEADING: PineTheme.colors.primary.foreground,
    PineTextTypes.HEADER: PineTheme.colors.primary.foreground,
    PineTextTypes.HEADING: PineTheme.colors.primary.foreground,
    PineTextTypes.LIST: PineTheme.colors.primary.list,
    PineTextTypes.PARAGRAPH: PineTheme.colors.primary.foreground,
    PineTextTypes.SMALL_HEADING: PineTheme.colors.primary.foreground,
    PineTextTypes.TITLE_COLOR: PineTheme.colors.common.icon,
  },
  PineThemeTypes.SECONDARY: {
    PineTextTypes.APPBAR_TITLE: PineTheme.colors.secondary.foreground,
    PineTextTypes.DATE_HEADING: PineTheme.colors.common.foreground,
    PineTextTypes.HEADER: PineTheme.colors.common.foreground,
    PineTextTypes.HEADING: PineTheme.colors.common.foreground,
    PineTextTypes.LIST: PineTheme.colors.common.list,
    PineTextTypes.PARAGRAPH: PineTheme.colors.common.foreground,
    PineTextTypes.SMALL_HEADING: PineTheme.colors.common.foreground,
    PineTextTypes.TITLE_COLOR: PineTheme.colors.common.foreground,
  },
  PineThemeTypes.CUSTOM: {
    PineTextTypes.PARAGRAPH: PineTheme.colors.primary.background,
  },
  PineThemeTypes.DISABLED: {PineTextTypes.PARAGRAPH: PineTheme.colors.common.disabled},
};

final _textLineHeight = {
  PineTextLineHeight.XSMALL: PineTheme.fonts.lineHeight.xsmall,
  PineTextLineHeight.XSMEDIUM: PineTheme.fonts.lineHeight.xsmedium,
  PineTextLineHeight.SMALL: PineTheme.fonts.lineHeight.small,
  PineTextLineHeight.MEDIUM: PineTheme.fonts.lineHeight.medium,
};

class PineTextTheme {
  static TextStyle getStyle({
    PineThemeTypes type = PineThemeTypes.COMMON,
    PineTextTypes textType = PineTextTypes.PARAGRAPH,
    PineTextLineHeight lineHeight = PineTextLineHeight.SMALL,
  }) {
    return TextStyle(
      color: _textColor[type]![textType],
      fontFamily: _textTypeFamily[textType],
      fontSize: _textTypeSize[textType],
      fontWeight: _textTypeWeight[textType],
      height: _textLineHeight[lineHeight],
      decoration: TextDecoration.none,
    );
  }
}
