// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:recorder_poc/pine_palette.dart';

class MenuLinksTheme {
  // themes
  static const MAIN_MARGIN = EdgeInsets.only(
    top: 20.0,
  );
  static const TITLE = TextStyle(
    fontFamily: 'Archivo',
    fontSize: 18.0,
    fontWeight: FontWeight.w700,
    color: PinePalette.black,
  );

  static const MAIN_PADDING = EdgeInsets.symmetric(horizontal: 50.0);
  static const RIGHT_CONTENT_MARGIN = EdgeInsets.only(left: 16);
  static const LIST_ITEM_SEPARATION = 10.0;
  static const ICON_WIDTH = 63.0;
  static const ICON_HEIGHT = 50.0;
  static const ICON_PADDING_TOP = 9.0;
  static const QUICK_LINKS_PADDING = EdgeInsets.only(left: 20.0, top: 20.0);
  static const DIVIDER_HEIGHT = 1.0;
  static const DIVIDER_PADDING = EdgeInsets.only(top: 20.0);

  // Icons
  static const String ICON_ARROW_UP_GREEN = 'ARROW_UP_GREEN';
  static const String ICON_ARROW_DOWN_GREEN = 'ARROW_DOWN_GREEN';
  static const String ICON_ARROW = 'ARROW_RIGHT_GREEN';
  static const String ICON_NEED_CARE_GUIDE = 'NEED_CARE_GUIDE';
  static const String ICON_DOCTOR_NEW = 'DOCTOR_NEW';
  static const String ICON_VIDEO_VISITS = 'VIDEO_VISITS';
  static const String ICON_PAY_MY_BILL_NEW = 'PAY_MY_BILL_NEW';
  static const String ICON_RENEW_MY_PRESCRIPTION = 'RENEW_MY_PRESCRIPTION';
  static const String ORTHOPEDIC_SPORT_MEDICINE = 'ORTHOPEDIC_SPORT_MEDICINE';
  static const String ENDO = 'ENDO';
  static const String MAMMOGRAPHY_FILLED = 'MAMMOGRAPHY_FILLED';
  static const String MORE_ARROW = 'MORE_ARROW';

  // Ui-Keys
  static const keyMenuLinkVisibility = Key('menu-links-visibility-detector');
}
