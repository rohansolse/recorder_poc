import 'package:flutter/material.dart';
import 'package:recorder_poc/pine_palette.dart';

const List<Color> _defaultGradiant = <Color>[
  Color(0xFFFFFFFF),
  Color(0xFFFFFFFF),
];

const _defaultColor = PinePalette.black;

class PineColorSet {
  PineColorSet({
    required this.background,
    required this.foreground,
    required this.icon,
    this.paragraph = PinePalette.grayDark,
    this.disabled = PinePalette.grayLight,
    this.separator = _defaultColor,
    this.gradient = _defaultGradiant,
    this.list = _defaultColor,
    this.dots = _defaultColor,
  });
  final Color background;
  final Color foreground;
  final Color paragraph;
  final Color icon;
  final Color separator;
  final List<Color> gradient;
  final Color list;
  final Color disabled;
  final Color dots;
}

class PineColorTheme {
  final PineColorSet common;
  final PineColorSet actionA;
  final PineColorSet actionB;
  final PineColorSet primary;
  final PineColorSet secondary;
  final PineColorSet custom;
  final PineColorSet light;
  final PineColorSet dark;
  final PineColorSet error;
  final PineColorSet error_yellow;

  PineColorTheme(
      {required this.common,
      required this.actionA,
      required this.actionB,
      required this.primary,
      required this.secondary,
      required this.custom,
      required this.light,
      required this.dark,
      required this.error,
      required this.error_yellow});
}
