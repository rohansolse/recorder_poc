import 'package:flutter/material.dart';
import 'package:recorder_poc/pine_palette.dart';

class GenericBottomSheetTheme {
  static const BORDER_RADIUS_DIALOG = RoundedRectangleBorder(
    borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
  );
  static const LISTVIEW_PADDING = EdgeInsets.all(30.0);
  static const LINE_SEPARATOR_HEIGHT = 35.0;
  static const CROSS_ICON_SIZE = 25.0;
  static const BOTTOM_SHEET_KEY = Key('generic_bottom_sheet');

  static const CROSS_ICON_DECORATION = BoxDecoration(
      shape: BoxShape.circle, color: PinePalette.white, boxShadow: [BoxShadow(blurRadius: 30, color: PinePalette.black15, offset: Offset(0, 0))]);
  static const SUB_SHEET_TITLE_PADDING = EdgeInsets.only(bottom: 5, left: 20, right: 20, top: 20);
}
