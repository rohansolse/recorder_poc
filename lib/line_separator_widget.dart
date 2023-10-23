import 'package:flutter/material.dart';
import 'package:recorder_poc/pine_theme.dart';

final _lineColors = {
  PineThemeTypes.COMMON: PineTheme.colors.common.separator,
  PineThemeTypes.PRIMARY: PineTheme.colors.primary.separator,
  PineThemeTypes.SECONDARY: PineTheme.colors.secondary.separator,
  PineThemeTypes.CUSTOM: PineTheme.colors.primary.separator,
};

class LineSeparatorTheme {
  static final colors = _lineColors;
}

class LineSeparatorWidget extends StatelessWidget {
  const LineSeparatorWidget({
    Key? key,
    this.type = PineThemeTypes.COMMON,
    this.height = 24.0,
    this.indent = 0,
    this.startIndent = 0.0,
    this.endIndent = 0.0,
  }) : super(key: key);
  final double height;
  final double startIndent;
  final double endIndent;
  final PineThemeTypes type;
  final double indent;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(
          top: startIndent,
          bottom: endIndent,
        ),
        child: Divider(
          thickness: 1.0,
          height: height,
          color: LineSeparatorTheme.colors[type],
          indent: indent,
        ));
  }
}
