import 'package:flutter/cupertino.dart';
import 'package:recorder_poc/pine_theme.dart';

class PineListTileTheme {
  static final TITLE_STYLE = TextStyle(
    fontFamily: PineTheme.fonts.family.paragraph,
    color: PineTheme.colors.common.icon,
    fontWeight: FontWeight.w400,
    fontSize: PineTheme.fonts.size.appbarTitle,
  );
  static final SUB_TITLE_STYLE = TextStyle(
    fontFamily: PineTheme.fonts.family.paragraph,
    color: PineTheme.colors.common.paragraph,
    fontWeight: FontWeight.w400,
    fontSize: PineTheme.fonts.size.list,
  );
  static const CIRCLE_AVATAR_RADIUS = 15.0;
}
