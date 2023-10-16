import 'package:flutter/material.dart';

Widget commonTextButton(
  textColor,
  fontFamilyRoboto,
  fontSize,
  text,
  fontWeight,
) {
  return TextButton(
    style: TextButton.styleFrom(
      textStyle: TextStyle(
        fontSize: fontSize,
        fontFamily: fontFamilyRoboto,
        fontWeight: fontWeight,
      ),
      foregroundColor: textColor,
    ),
    onPressed: () {},
    child: Text(text),
  );
}
