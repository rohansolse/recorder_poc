import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({
    super.key,
    required this.text,
    required this.textColor,
    required this.textFontWeight,
    required this.textFontFamily,
    required this.textFontSize,
    required this.textSpan,
    required this.textSpanWeight,
    required this.textSpanColor,
  });

  final String text;
  final Color textColor;
  final FontWeight textFontWeight;
  final String textFontFamily;
  final double textFontSize;
  final String textSpan;
  final FontWeight textSpanWeight;
  final Color textSpanColor;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: text,
        style: TextStyle(
          color: textColor,
          fontWeight: textFontWeight,
          fontFamily: textFontFamily,
          fontSize: textFontSize,
        ),
        children: [
          TextSpan(
            text: textSpan,
            style: TextStyle(
              fontWeight: textSpanWeight,
              color: textSpanColor,
            ),
          ),
        ],
      ),
    );
  }
}
