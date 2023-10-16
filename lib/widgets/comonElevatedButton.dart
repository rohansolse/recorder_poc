import 'package:flutter/material.dart';

Widget commonElevatedButton(
  width,
  hight,
  backgroundColor,
  textColor,
  fontSize,
  text,
  fontFamily,
  fontWeight,
) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        minimumSize: Size(width, hight),
        textStyle: TextStyle(
          color: textColor,
          fontSize: fontSize,
          fontFamily: fontFamily,
          fontWeight: fontWeight,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        )),
    onPressed: () {},
    child: Text(text),
  );
}
