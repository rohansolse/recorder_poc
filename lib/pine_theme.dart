import 'package:google_fonts/google_fonts.dart';
import 'package:recorder_poc/pine_fonts.dart';
import 'package:recorder_poc/pine_palette.dart';
import 'package:recorder_poc/pine_shapes.dart';

import './pine_colors.dart';

enum PineThemeTypes { COMMON, LIGHT, PRIMARY, SECONDARY, CUSTOM, DARK, ERROR, DISABLED, ERROR_YELLOW, ICON_BLUE, COMMON_INVERSE }

PineColorTheme _colorTheme = PineColorTheme(
  actionA: PineColorSet(
    background: PinePalette.greenPersian,
    foreground: PinePalette.white,
    icon: PinePalette.white,
    disabled: PinePalette.grayLight,
  ),
  actionB: PineColorSet(
    background: PinePalette.transparent,
    foreground: PinePalette.black,
    icon: PinePalette.black,
    disabled: PinePalette.grayLight,
  ),
  common: PineColorSet(
    background: PinePalette.white,
    foreground: PinePalette.black,
    icon: PinePalette.greenPersian,
    paragraph: PinePalette.grayDark,
    list: PinePalette.grayDark,
    separator: PinePalette.grayLight,
    dots: PinePalette.greenLightDots,
    disabled: PinePalette.inactiveGray,
  ),
  light: PineColorSet(
    background: PinePalette.white,
    foreground: PinePalette.white,
    icon: PinePalette.white,
  ),
  primary: PineColorSet(
    background: PinePalette.greenPersian,
    foreground: PinePalette.white,
    icon: PinePalette.white,
    gradient: PinePalette.greenGradiant,
    separator: PinePalette.white,
  ),
  secondary: PineColorSet(
    gradient: PinePalette.grayGradient,
    background: PinePalette.grayLigthest,
    foreground: PinePalette.grayDark,
    icon: PinePalette.grayDark,
  ),
  custom: PineColorSet(
    gradient: PinePalette.grayGradient,
    background: PinePalette.grayLigthest,
    foreground: PinePalette.grayDark,
    icon: PinePalette.greenBaptist,
  ),
  dark: PineColorSet(
    background: PinePalette.black,
    foreground: PinePalette.grayDark,
    disabled: PinePalette.inactiveGray,
    icon: PinePalette.greenPersian,
  ),
  error: PineColorSet(
    gradient: PinePalette.grayGradient,
    background: PinePalette.grayLigthest,
    foreground: PinePalette.grayDark,
    icon: PinePalette.alertRed,
  ),
  error_yellow: PineColorSet(
    gradient: PinePalette.grayGradient,
    background: PinePalette.grayLigthest,
    foreground: PinePalette.grayDark,
    icon: PinePalette.yellow,
  ),
);

PineShapesTheme _shapesTheme = PineShapesTheme(
  baseBorderRadius: 20.0,
  largeBorderRadius: 30.0,
  smallBorderRadius: 10.0,
  xsmallBorderRadius: 5.0,
  baseMargin: 10.0,
  baseMarginLeftToRight: 100.0,
  baseBoxPadding: 30.0,
  baseColSeparation: 20.0,
  baseHeadingParagraphSeparation: 4.0,
  basePaddingRight: 16.0,
  basePaddingTop: 20.0,
  basePaddingLeftToRight: 20.0,
  largeMarginTop: 100.0,
  extraLargeMarginTop: 210.0,
);

PineFontTheme _fontsTheme = PineFontTheme(
    family: PineFontFamily(
      heading: 'Archivo',
      paragraph: 'Roboto',
      body: 'Roboto',
    ),
    size: PineFontSize(
      heading: 18.0,
      header: 24.0,
      paragraph: 15.0,
      paragraph_m: 16.0,
      body: 12.0,
      list: 15.0,
      filter: 14.0,
      appbarTitle: 17,
      badgeCounter: 9.0,
      date: 15.0,
      rating: 13.0,
      subtitle: 13.0,
      headerWeb: 13.3,
    ),
    lineHeight: PineLineHeight(
      xsmall: 1.0,
      xsmedium: 1.18,
      small: 1.4,
      medium: 1.5,
    ));

PineFontTheme _fontsThemeGoogle = PineFontTheme(
    family: PineFontFamily(
      heading: GoogleFonts.archivo().fontFamily!,
      paragraph: GoogleFonts.roboto().fontFamily!,
      body: GoogleFonts.roboto().fontFamily!,
    ),
    size: PineFontSize(
      heading: 18.0,
      header: 24.0,
      paragraph: 15.0,
      paragraph_m: 16.0,
      body: 12.0,
      list: 15.0,
      filter: 14.0,
      appbarTitle: 17,
      badgeCounter: 9.0,
      date: 15.0,
      rating: 13.0,
      subtitle: 13.0,
      headerWeb: 13.3,
    ),
    lineHeight: PineLineHeight(
      xsmall: 1.0,
      xsmedium: 1.18,
      small: 1.4,
      medium: 1.5,
    ));

class PineTheme {
  PineTheme._();

  static final PineTheme _instance = PineTheme._();
  PineColorTheme colorsTheme = _colorTheme;
  PineShapesTheme shapesTheme = _shapesTheme;
  PineFontTheme fontTheme = _fontsTheme;
  PineFontTheme fontThemeGoogle = _fontsThemeGoogle;

  // GETTERS
  static PineTheme get config => _instance;

  static PineColorTheme get colors => _instance.colorsTheme;

  static PineShapesTheme get shapes => _instance.shapesTheme;

  static PineFontTheme get fonts => _instance.fontTheme;

  static PineFontTheme get fontsGoogle => _instance.fontThemeGoogle;
}
