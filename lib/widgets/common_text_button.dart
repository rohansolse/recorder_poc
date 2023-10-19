import 'package:flutter/material.dart';

class CommonTextButton extends StatelessWidget {
  const CommonTextButton({
    super.key,
    required this.textColor,
    required this.fontFamilyRoboto,
    required this.fontSize,
    required this.text,
    required this.fontWeight,
  });

  final Color textColor;
  final String fontFamilyRoboto;
  final double fontSize;
  final String text;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
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
}
